/**
 * แยกวันและเวลาออกจาก UTC datetime จาก Supabase
 * input ตัวอย่าง: "2026-01-11 17:15:52.296011"
 */
export function splitDateTime(
  input: string,
  withSeconds: boolean = true
): { date: string; time: string } {
  if (!input) return { date: "", time: "" };

  // บังคับเป็น UTC ISO
  const isoUtc = input.replace(" ", "T") + "Z";

  const d = new Date(isoUtc);

  if (Number.isNaN(d.getTime())) {
    return { date: "", time: "" };
  }

  // 👇 ใช้ getUTC* แล้วบวก offset เอง
  const thaiOffsetMs = 7 * 60 * 60 * 1000;
  const thaiDate = new Date(d.getTime() + thaiOffsetMs);

  const yyyy = thaiDate.getUTCFullYear();
  const mm = String(thaiDate.getUTCMonth() + 1).padStart(2, "0");
  const dd = String(thaiDate.getUTCDate()).padStart(2, "0");

  const hh = String(thaiDate.getUTCHours()).padStart(2, "0");
  const mi = String(thaiDate.getUTCMinutes()).padStart(2, "0");
  const ss = String(thaiDate.getUTCSeconds()).padStart(2, "0");

  return {
    date: `${yyyy}-${mm}-${dd}`,
    time: withSeconds ? `${hh}:${mi}:${ss}` : `${hh}:${mi}`,
  };
}
