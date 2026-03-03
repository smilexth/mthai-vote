# MThai Sticker Vote Script

A nostalgic piece of early 2000s Thai internet history - an automated voting script for mthai.com's sticker polling feature.

## Historical Context

**MThai.com** was one of Thailand's most popular entertainment portals during the early 2000s, alongside [Sanook.com](https://www.sanook.com) and [Kapook.com](https://www.kapook.com). These portals were the go-to destinations for Thai internet users seeking entertainment content, news, and interactive features.

### The Sticker Vote Feature

MThai offered a "sticker" (สติกเกอร์) voting system where users could vote for their favorite images in various categories. This was a popular form of online engagement in Thailand's early social internet era, before the dominance of social media platforms like Facebook and LINE.

## Attribution

I am **not the original author** of this script. I found it in my old archives from back in the day - I honestly can't remember where I got it from or who wrote it. Preserving it here as a piece of Thai internet history.

If you are the original author and would like to be credited, please reach out.

## Technical Details

This Perl script demonstrates vote manipulation techniques from that era:

- **Language**: Perl (was the dominant web scripting language of that time)
- **Libraries**: `LWP::UserAgent`, `HTTP::Request::Common` - the standard HTTP toolkit for Perl
- **Technique**: Proxy rotation to bypass IP-based voting restrictions
- **User Agent Spoofing**: Impersonated Internet Explorer 5.0 on Windows 98

### Files

| File | Description |
|------|-------------|
| `votemthai.pl` | Main voting script |
| `list1.txt` - `list13.txt` | Proxy server lists (IP:port format) |
| `1.bat` - `13.bat` | Batch launchers for different proxy lists |

### Usage (Historical)

```batch
perl votemthai.pl <proxy_list> <category> <sticker_id>

:: Example
perl votemthai.pl list10.txt vip 145004
```

## Educational Purpose

This code is preserved for **historical and educational purposes only**. It demonstrates:

- Early web automation techniques
- HTTP request manipulation in Perl
- Proxy-based request routing
- The cat-and-mouse game between voting systems and automation scripts

## Disclaimer

This script is archived as a piece of internet history. Do not use it for vote manipulation on any platform. Such activities violate terms of service and may be illegal in many jurisdictions.

---

*From the early days of Thailand's internet boom, when portals ruled the web and Perl was king.*
