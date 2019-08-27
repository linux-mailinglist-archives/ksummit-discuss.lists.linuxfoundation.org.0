Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id F39419F1B8
	for <lists@lfdr.de>; Tue, 27 Aug 2019 19:35:18 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B163119B7;
	Tue, 27 Aug 2019 17:35:02 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id B67F21952
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 17:34:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
	[209.85.167.193])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 2AF00710
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 17:34:59 +0000 (UTC)
Received: by mail-oi1-f193.google.com with SMTP id 16so15594888oiq.6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 10:34:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=bBLUBh8avuAdl5tgAfl1paHIRT9+tBfs0FETbEZgurA=;
	b=qq08xjq+uZ+8TcKRFmr+m69mPmYza+FHcfcw/cCAk+Z2RvIZFsXb6EAhzgI+ngA0Ve
	YYp35El/2EZr8QOo9YLZ17S6/2VPFFikklB5nF0kOfNjvYVamBM2+Rdd/5XKx6tm6ayn
	Sk7Qn8ItoGenFCKvoNMj7LduTBfKAT1l+AUIcgPTLsu+ALa6rA8UW2pTke3iGpdKU5V+
	gl2rN9+X2KRvcgWZikiCNtfgvskUMTDru1WrWuWM+loXf3aZwxnWPApOpS7h88rKWhng
	FICdk9qyTdRpLvlHvTvA1kM75F6/nMU5twDXgEkmWZiP3zuha+ateHhExjGglMz0LWY3
	13xQ==
X-Gm-Message-State: APjAAAUrjm5nV6zJ1vLMrr2o8v66PvXvhNr7H2tu0dGz083h9eir4YQg
	IYngBFGJ04uC64ICatkeLqE9HOMkRQKY1t6rYDc=
X-Google-Smtp-Source: APXvYqzs5EJIiJ7Hl7x217zORIAZqMSsH/P6ayal4KEfyFEl/pwvlhvcGmuLV/Rkvi3ETtCg+euFXhADfKaQb6CmXJM=
X-Received: by 2002:a54:478d:: with SMTP id o13mr53263oic.54.1566927298331;
	Tue, 27 Aug 2019 10:34:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
In-Reply-To: <dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 27 Aug 2019 19:34:45 +0200
Message-ID: <CAMuHMdWFh2cK_T3y=iAfEOq=Nv_JpbKKqJ2chi=X40cWLxqBgA@mail.gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.12
Precedence: list
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

SGkgR8O8bnRlciwKCk9uIFR1ZSwgQXVnIDI3LCAyMDE5IGF0IDQ6MDEgUE0gR3VlbnRlciBSb2Vj
ayA8bGludXhAcm9lY2stdXMubmV0PiB3cm90ZToKPiBPbiA4LzI3LzE5IDY6NDggQU0sIEdyZWcg
S3JvYWgtSGFydG1hbiB3cm90ZToKPiA+IE9uIFR1ZSwgQXVnIDI3LCAyMDE5IGF0IDA2OjI0OjM2
QU0gLTA3MDAsIERtaXRyeSBWeXVrb3Ygd3JvdGU6Cj4gPj4gT24gTW9uLCBBdWcgMjYsIDIwMTkg
YXQgMTE6MDYgUE0gVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+IHdyb3RlOgo+
ID4+PiBPbiBNb24sIDI2IEF1ZyAyMDE5LCBEbWl0cnkgVnl1a292IHdyb3RlOgo+ID4+Pj4gQSBz
b21ld2hhdCByZWxhdGVkIHBvaW50IHJlIFVVSUQvQ2hhbmdlLUlELgo+ID4+Pj4gRm9yIHN5emJv
dCAob3IgYW55IG90aGVyIGJ1ZyB0cmFja2luZyBzeXN0ZW0pIHdlIHdhbnQgdG8gYXNzb2NpYXRl
Cj4gPj4+PiBidWdzIHdpdGggZml4ZXMuIEl0IHR1cm5lZCBvdXQgdGhlcmUgaXMgbm8gZ29vZCBp
ZGVudGl0eSBvZiBhIGNoYW5nZQo+ID4+Pj4gdGhhdCB3ZSBjb3VsZCB1c2UuIENvbW1pdCBoYXNo
IGlzIGFuIG9idmlvdXMgZmlyc3QgdGhpbmcgdG8gY29uc2lkZXIsCj4gPj4+PiBidXQgKDEpIGl0
IGNoYW5nZXMgaW4gbGludXgtbmV4dCwgKDIpIHNvbWV0aW1lcyB0aGUgY2hhbmdlIGlzIG5vdAo+
ID4+Pj4gY29tbWl0dGVkIHlldCB3aGVuIHdlIGRvIHRoZSBhc3NvY2lhdGlvbiwgKDMpIGl0IGlz
IGRpZmZlcmVudCB3aGVuCj4gPj4+PiBiYWNrcG9ydGVkIHRvIExUUyAoc28gbm90IHBvc3NpYmxl
IHRvIHNheSBpZiBhIGZpeCBpcyBpbiB0aGF0IHN0YWJsZQo+ID4+Pj4gdHJlZSBvciBub3QpLgo+
ID4+Pj4gV2UgZGVjaWRlZCB0byB1c2UgY29tbWl0IHN1YmplY3QsIHdoaWNoIHdvcmtzIHRvIHNv
bWUgZGVncmVlLCBidXQgYWxzbwo+ID4+Pj4gaGFzIHByb2JsZW1zOiAoMSkgbm90IG5lY2Vzc2Fy
eSB1bmlxdWUsICgyKSBzb21ldGltZXMgcGVvcGxlIGNoYW5nZQo+ID4+Pj4gc3ViamVjdCBkdXJp
bmcgYmFja3BvcnRpbmcgKGUuZy4gcHJlcGVuZCBzb21lIHByZWZpeCksICgzKSBoYXMgYWxsIHRo
ZQo+ID4+Pj4gc2FtZSBwcm9ibGVtcyBvZiBlbWFpbCBjbGllbnRzIG1lc3Npbmcgd2l0aCB0ZXh0
IChlLmcuIEkgY2FuJ3QgaXNzdWUKPiA+Pj4+ICNzeXogZml4IGNvbW1hbmQgZm9yIGxvbyBsb25n
IGNvbW1pdCBzdWJqZWN0cyB3aXRoIG15IGVtYWlsIGNsaWVudCkuCj4gPj4+PiBTb21lIHJlYWwg
VVVJRC9DaGFuZ2UtSUQgd291bGQgc29sdmUgYWxsIG9mIHRoZXNlIHByb2JsZW1zIGJ5IGdpdmlu
Zwo+ID4+Pj4gdXMgY2FwYWJpbGl0eSB0byByZWZlciB0byBjaGFuZ2VzIHJhdGhlciB0aGFuIGEg
Y29tbWl0IGluIGEgcGFydGljdWxhcgo+ID4+Pj4gdHJlZSBvbmx5Lgo+ID4+Pgo+ID4+PiBJZiB3
ZSBhZG9wdCB0aGUgTGluazogLi4uLi8kTVNHIHRhZyB3aWRlbHkgdGhlbiB5b3UgaGF2ZSBhIFVV
SUQuCj4gPj4KPiA+PiBJcyB0aGVyZSBhIHdheSB0byBlbnN1cmUgdGhhdCBldmVyeWJvZHkgd2ls
bCBnZW5lcmF0ZSByaWdodCBJRHMKPiA+PiAoQ2hhbmdlSUQtVmVyc2lvbikgYW5kIHRoZW4gYSBs
aW5rIGluIGNhbm9uaWNhbCBmb3JtIHdpbGwgYmUgaW5jbHVkZWQKPiA+PiBpbnRvIGNvbW1pdD8g
QXMgZmFyIGFzIEkgdW5kZXJzdGFuZCB0aGlzIGlzIG5vdCBwb3NzaWJsZSB3aXRoIHRoZQo+ID4+
IGN1cnJlbnQga2VybmVsIHRvb2xpbmcsIGFzIHRoaXMgYXNwZWN0IGlzIG5vdCB1bmRlciBjb250
cm9sIG9mIGFueQo+ID4+IHVuaWZpZWQgdG9vbGluZy4KPiA+PiBJIHNlZSBkaWZmZXJlbnQgbWFp
bnRhaW5lcnMgdXNlIGxpbmtzIHRvIGRpZmZlcmVudCBhcmNoaXZlIHdlYiBzaXRlcy4KPiA+PiBB
bHNvIHNvbWV0aW1lcyBMaW5rIGlzIHByZXNlbnQgZm9yIG90aGVyIHJlYXNvbnMgKGUuZy4gbGlu
ayB0byBidWcKPiA+PiByZXBvcnQpLgo+ID4+IFRoZSBsaW5rIHdpbGwgbmVlZCB0byBiZSBhZGRl
ZCBieSBldmVyeSBkZXZlbG9wZXIgKHJhdGhlciB0aGFuCj4gPj4gbWFpbnRhaW5lcikgc28gdGhh
dCBpdCdzIGF2YWlsYWJsZSBiZWZvcmUgdGhlIGNoYW5nZSBpcyBjb21taXR0ZWQKPiA+PiBhbnl3
aGVyZS4KPiA+Cj4gPiBGb3Igc3Vic3lzdGVtcyBJIG1haW50YWluLCBJIGFtIGFscmVhZHkgYWRk
aW5nIHRoZSBMaW5rOiB0YWcgdG8KPiA+IGxvcmUua2VybmVsLm9yZyB3aXRoIHRoZSBtZXNzYWdl
IGlkIGluIGl0LiAgVGhhdCBpcyBhdXRvbWF0aWNhbGx5IGFkZGVkCj4gPiBieSBteSBzY3JpcHRz
Lgo+ID4KPiA+PiBUaG91Z2gsIG1vc3Qgb2YgdGhlc2UgYXJlIHByb2JsZW1zIGZvciBhbnkgb3Ro
ZXIgY2hhbmdlIGlkZW50aWZpY2F0aW9uIHNjaGVtZS4uLgo+ID4KPiA+IE5vdGUsIHdlIGhhdmUg
NDAwMCsgZGV2ZWxvcGVycyBldmVyeSB5ZWFyLCBpdCdzIGhhcmQgZW5vdWdoIHRvIGdldCB0aGVt
Cj4gPiBhbGwgdG8gYWdyZWUgb24gbWFqb3IgdGhpbmdzLCBsZXQgYWxvbmUgY3Jhenkgc3R1ZmYg
bGlrZSB0aGlzIDopCj4gPgo+Cj4gSXMgaXQgcmVhbGx5IHRoYXQgY3JhenkgPwo+Cj4gSSBoYXZl
IHRvIHVzZSBhIGNvbWJpbmF0aW9uIG9mIHN1YmplY3QgYW5hbHlzaXMgYW5kIHBhdGNoIGNvbnRl
bnQgYW5hbHlzaXMKPiB1c2luZyBmdXp6eSB0ZXh0IC8gc3RyaW5nIGNvbXBhcmlzb24sIGNvbWJp
bmVkIHdpdGggYW4gYW5hbHlzaXMgb2YgdGhlIHBhdGNoCj4gZGVzY3JpcHRpb24sIHRvIGFuc3dl
ciBhIHNpbXBsZSBxdWVzdGlvbjogSXMgdGhpcyBwYXRjaCB1cHN0cmVhbSwgYW5kIHdoYXQgaXMK
PiBpdHMgdXBzdHJlYW0gU0hBID8gSGF2aW5nIGEgVVVJRCB0YWcgd291bGQgbWFrZSB0aGlzIGEg
c2ltcGxlIGFuZAoKSSB0eXBpY2FsbHkgdXNlICJnaXQgY2hlcnJ5IC12IiB0byBjaGVjayBpZiBh
IHBhdGNoIGlzIHVwc3RyZWFtLgpZZXMsIHRoaXMgbWF5IG1pc3MgYSBwYXRjaCB0aGF0IHdhcyBj
aGFuZ2VkLiAgQnV0IHRoYXQgY2FuIGJlIGEgZ29vZCB0aGluZy4KCj4gc3RyYWlnaHRmb3J3YXJk
IG9wZXJhdGlvbi4gV2hhdCBpcyBjcmF6eSBpcyBoYXZpbmcgdG8gZG8gYWxsIHRoaXMgYW5hbHlz
aXMuCgpXaGF0IGhhcHBlbnMgdG8gdGhlIFVVSUQgd2hlbiBhIHBhdGNoIGlzIHNwbGl0IGluIHR3
byBwYXJ0cz8KSWYgYSBwYXJ0IGlzIGFwcGxpZWQgd2l0aCB0aGUgc2FtZSBVVUlELCB0aGF0IHdv
dWxkIGdpdmUgdGhlIGZhbHNlIGltcHJlc3Npb24KdGhhdCB0aGUgb3JpZ2luYWwgZnVsbCBwYXRj
aCB3YXMgYXBwbGllZC4KCkF0IGxlYXN0IHJlYmFzaW5nICh1c2luZyBnaXQgcmViYXNlKSB5b3Vy
IHN1Ym1pc3Npb25zIGFnYWluc3QgdXBzdHJlYW0gd2lsbAprZWVwIHRoZSBwYXJ0IHRoYXQgc3Rp
bGwgaGFzbid0IGJlZW4gYXBwbGllZC4KCkdye29ldGplLGVldGluZ31zLAoKICAgICAgICAgICAg
ICAgICAgICAgICAgR2VlcnQKCi0tIApHZWVydCBVeXR0ZXJob2V2ZW4gLS0gVGhlcmUncyBsb3Rz
IG9mIExpbnV4IGJleW9uZCBpYTMyIC0tIGdlZXJ0QGxpbnV4LW02OGsub3JnCgpJbiBwZXJzb25h
bCBjb252ZXJzYXRpb25zIHdpdGggdGVjaG5pY2FsIHBlb3BsZSwgSSBjYWxsIG15c2VsZiBhIGhh
Y2tlci4gQnV0CndoZW4gSSdtIHRhbGtpbmcgdG8gam91cm5hbGlzdHMgSSBqdXN0IHNheSAicHJv
Z3JhbW1lciIgb3Igc29tZXRoaW5nIGxpa2UgdGhhdC4KICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAtLSBMaW51cyBUb3J2YWxkcwpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpLc3VtbWl0LWRpc2N1c3MgbWFpbGluZyBsaXN0CktzdW1taXQtZGlz
Y3Vzc0BsaXN0cy5saW51eGZvdW5kYXRpb24ub3JnCmh0dHBzOi8vbGlzdHMubGludXhmb3VuZGF0
aW9uLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tzdW1taXQtZGlzY3Vzcwo=
