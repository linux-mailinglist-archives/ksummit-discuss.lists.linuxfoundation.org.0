Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAA3A4863
	for <lists@lfdr.de>; Sun,  1 Sep 2019 10:10:01 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 9C4C815A2;
	Sun,  1 Sep 2019 08:09:46 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4D8171394
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  1 Sep 2019 08:09:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 81ED15D0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  1 Sep 2019 08:09:43 +0000 (UTC)
Received: by mail-oi1-f176.google.com with SMTP id a127so8439877oii.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 01 Sep 2019 01:09:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=t1GhHcU4Ml80itQejvNDUx/WE2HD7u0kHoxUYBAYIS4=;
	b=g2DFARnNnBKz5dd6laBWh5IkuhfWoEYSyBADc7yP2mpNM2vO6+lu01Z4fgmnDwOYxu
	A/WMj0Ub0924sn7X5mwPT7Qyq+Bu4d/Esbl2Td23cxakJmqtREti4MmHJgX3babDYACm
	UCJupfX+nY+l5GkJI+Zs6HF3wrkyPjRArLpLo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=t1GhHcU4Ml80itQejvNDUx/WE2HD7u0kHoxUYBAYIS4=;
	b=M/iQAQovV2iKlFYx1xk+YXsNlOqUWjBpB1i5e2qXPbeum2iZIS2wbCZ0Ua6khH8y97
	wiucVO5lbR2ZPB1p5oHZHBvpdF4P8cxol53Z3TaHrBe8pKBA1awBVNDQjK1GjJMnzd1g
	hKUBf1v+ATvgt7wWXF4j9StOYreDey3y/XEtaYFe1yDUBQ510TfVnRukndScW41ikg/a
	uac3/KW7OjDG2kdwU6hEYw1d8w6sdFeL7we/s7VvFtk/wEP+kpJXXTBzf3OcXW3GdPK1
	+lKwaGIZ3lwv62lZWN6WUmVKFIyZ6YZYEUolR9FEkjJvWtOWEPB/xIhssGuGonaru5fI
	pQKg==
X-Gm-Message-State: APjAAAVgEKsBU1TsvgJqQ733Y+yOgaPxd+jUTjCzMNbPUvTRo5UN1Viu
	nIjyVNX02VkI8oTSR/GeECVvPtUr0BNDjk0ZDzhn8Q==
X-Google-Smtp-Source: APXvYqx+GXUUgX7j072XsGwpbs1Xol7oueFEET5r42uoDe5irV0g020jva705HbMGoGzvq9kyrxu75nDeEDL7pU/Q58=
X-Received: by 2002:aca:1a0b:: with SMTP id a11mr15930159oia.128.1567325382482;
	Sun, 01 Sep 2019 01:09:42 -0700 (PDT)
MIME-Version: 1.0
References: <20190826212548.GA15967@mit.edu>
	<CAPM=9txgVSybLWobvGfTiLLMcNgrqOg5nMpaVm41eT6Bkp+b0A@mail.gmail.com>
	<20190830034906.GA5670@mit.edu>
In-Reply-To: <20190830034906.GA5670@mit.edu>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Sun, 1 Sep 2019 10:09:30 +0200
Message-ID: <CAKMK7uEuqMMeZn-bSHoih3FKEspiGmibN=5KAgZtAiAj2Tw-Tw@mail.gmail.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] DRAFT Kernel Summit Track schedule
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

T24gRnJpLCBBdWcgMzAsIDIwMTkgYXQgNTo0OSBBTSBUaGVvZG9yZSBZLiBUcydvIDx0eXRzb0Bt
aXQuZWR1PiB3cm90ZToKPgo+IE9uIFRodSwgQXVnIDI5LCAyMDE5IGF0IDA2OjEzOjU3QU0gKzEw
MDAsIERhdmUgQWlybGllIHdyb3RlOgo+ID4KPiA+IE5vdCBzdXJlIHdobyBpcyBnaXZpbmcgdGhl
IE1vbmRheSBncmFwaGljcyB0YWxrIGF0IDEyOjAwIGNvdWxkIEkgYXNrCj4gPiB5b3UgdG8gcHVz
aCB0aGlzIGEgYml0IGxhdGVyLiBJJ20gdW5mb3J0dW5hdGVseSBhcnJpdmluZyBpbiBMaXNib24g
b24KPiA+IE1vbmRheSBtb3JuaW5nIGFuZCBJIHNob3VsZCBiZSBhdCB0aGUgdmVudWUgYnkgMTI6
MDAgYnV0IGl0IHdvdWxkIGJlCj4gPiBnb29kIHRvIGd1YXJhbnRlZSBJIGNhbiBhdHRlbmQuCj4K
PiBJdCdzIERhbmllbCBWZXR0ZXIuICBUaGUgZnVsbCBrZXJuZWwgc3VtbWl0IGFnZW5kYSBvbi1s
aW5lIGNhbiBiZQo+IGZvdW5kIGF0Ogo+Cj4gICAgICAgICBodHRwczovL2xpbnV4cGx1bWJlcnNj
b25mLm9yZy9ldmVudC80L3Nlc3Npb25zLzQwLyNhbGwKPgo+IEhtbS4uLiBvbmUgcG9zc2liaWxp
dHkgbWlnaHQgYmUgdG8gc3dhcCBpdCB3aXRoIHRoZSBNYXBsZSBUcmVlIHRhbGsgYXQKPiAxNTow
MC4gIExldCdzIHNlZSBpZiBEYW5pZWwgYW5kIExpYW0gYXJlIE9LIHdpdGggdGhpcy4KCkZpbmUg
d2l0aCBtZSwgYWN0dWFsbHkgYSBiaXQgYmV0dGVyIHNpbmNlIHRoZW4gaXQgZG9lc24ndCBjbGFz
aCB3aXRoCnRoZSBkaXN0cm8ga2VybmVsIE1DLgotRGFuaWVsCgo+Cj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgLSBUZWQKPgo+Cj4KPiA+ID4KPiA+ID4gTW9uZGF5IFNlcHRl
bWJlciA5LCAyMDE5Cj4gPiA+Cj4gPiA+IEFNIE1DJ3M6IERpc3QgS2VybmVscywgVHJhY2luZyBN
QywgUklTQy1WCj4gPiA+IFBNIE1DJ3MgUE06IElvVCwgU2NoZWR1bGVyLCBJT01NVQo+ID4gPgo+
ID4gPiAxMDowMCAgUmV3b3JraW5nIG9mIEtWQSBhbGxvY2F0b3IgaW4gTGludXgga2VybmVsCj4g
PiA+IDEwOjQ1ICBUb3VjaCBidXQgZG9u4oCZdCBsb29rOiBSdW5uaW5nIHRoZSBrZXJuZWwgaW4g
ZXhlY3V0ZSBvbmx5IG1lbW9yeQo+ID4gPiAxMTozMCAgQnJlYWsKPiA+ID4gMTI6MDAgIFVwc3Ry
ZWFtIEdyYXBoaWNzOiBUb28gbGl0dGxlLCB0b28gbGF0ZQo+ID4gPiAxMjo0NSAgVGhlIGxpc3Qg
aXMgb3VyIHByb2Nlc3M6IEFuIGFuYWx5c2lzIG9mIHRoZSBrZXJuZWwncyBlbWFpbC1iYXNlZCBk
ZXZlbG9wbWVudCBwcm9jZXNzCj4gPiA+IDEzOjMwICBMdW5jaAo+ID4gPiAxNTowMCAgTWFwbGUg
VHJlZQo+ID4gPiAxNTo0NSAgPE9wZW4gc2xvdD4KPiA+ID4gMTY6MzAgIEJyZWFrCj4gPiA+IDE3
OjAwICBJbmxpbmUgRW5jcnlwdGlvbiBTdXBwb3J0Cj4gPiA+IDE3OjQ1ICA8T3BlbiBTbG90Pgo+
ID4gPiAxODozMCAgVEFCIEVsZWN0aW9ucwo+ID4gPiAxOTo0NSAgTFBDIEV2ZW5pbmcgRXZlbnQK
PiA+ID4KPiA+ID4KPiA+ID4gVHVlc2RheSBTZXB0ZW1iZXIgMTAsIDIwMTkKPiA+ID4KPiA+ID4g
QU0gTUMnczogT3BlbiBQcmludGluZywgVG9vbGNoYWlucywgVGVzdGluZyBhbmQgRnV6emluZwo+
ID4gPiBQTSBNQydzOiBDb250YWluZXJzLCBBbmRyb2lkLCBQb3dlciBtYW5hZ2VtbnQKPiA+ID4K
PiA+ID4gMTA6MDAgIE1lbW9yeSBtYW5hZ2VtZW50IGJpdHMgaW4gYXJjaC8qCj4gPiA+IDEwOjQ1
ICByZXBsYWNpbmcgbW1hcF9zZW0gd2l0aCBmaW5lciBncmFpbmVkIGxvY2tzCj4gPiA+IDExOjMw
ICBCcmVhawo+ID4gPiAxMjowMCAgS2lsbGluZyB0aGUgbW1hcF9zZW0ncyBjb250ZW50aW9uCj4g
PiA+IDEyOjQ1ICA8T3BlbiBTbG90Pgo+ID4gPiAxMzozMCAgTHVuY2gKPiA+ID4gMTU6MDAgIFRy
YWNpbmcgRGF0YSBBY2Nlc3MgUGF0dGVybiB3aXRoIEJvdW5kZWQgT3ZlcmhlYWQgYW5kIEJlc3Qt
ZWZmb3J0IEFjY3VyYWN5Cj4gPiA+IDE1OjQ1ICBJbnRlcnJ1cHQgTWVzc2FnZSBTdG9yZTogQSBz
Y2FsYWJsZSBpbnRlcnJ1cHQgbWVjaGFuaXNtIGZvciB0aGUgY2xvdWQKPiA+ID4gMTY6MzAgIEJy
ZWFrCj4gPiA+IDE3OjAwICBLZXJuZWwgRG9jdW1lbnRhdGlvbgo+ID4gPiAxNzo0NSAgPE9wZW4g
U2xvdD4KPiA+ID4KPiA+ID4gV2VkbmVzZGF5LCBTZXB0ZW1iZXIgMTEsIDIwMTkKPiA+ID4KPiA+
ID4gQU0gTUMnczogUkRNQSwgUmVhbCBUaW1lLCBEYXRhYmFzZXMKPiA+ID4gUE0gTUMnczogTGl2
ZSBwYXRjaGluZywgQlBGLCBTeXN0ZW0gYm9vdC9zZWN1cml0eQo+ID4gPgo+ID4gPiAxMDowMCAg
TW92aW5nIHRoZSBMaW51eCBBQkkgdG8gdXNlcnNwYWNlCj4gPiA+IDEwOjQ1ICBLVW5pdCAtIFVu
aXQgVGVzdGluZyBmb3IgdGhlIExpbnV4IEtlcm5lbAo+ID4gPiAxMTozMCAgQnJlYWsKPiA+ID4g
MTI6MDAgIFJlZmxlY3Rpb25zIG9uIGtlcm5lbCBxdWFsaXR5LCBkZXZlbG9wbWVudCBwcm9jZXNz
IGFuZCB0ZXN0aW5nCj4gPiA+IDEyOjQ1ICA8T3BlbiBTbG90Pgo+ID4gPiAxMzozMCAgTHVuY2gK
PiA+ID4gMTU6MDAgIERlY291cGxpbmcgWlJBTSBmcm9tIGEgc3BlY2lmaWMgYmFja2VuZAo+ID4g
PiAxNTo0NSAgPE9wZW4gU2xvdD4KPiA+ID4gMTY6MzAgIDxCcmVhaz4KPiA+ID4gMTc6MDAgIDxP
cGVuIFNsb3Q+Cj4gPiA+IDE3OjQ1ICA8Um9vbSBub3QgYXZhaWxhYmxlIC0tIHJlY29uZmlndXJh
dGlvbiBmb3IgUGxlbmFyeT4KPiA+ID4gMTg6MzAgIENsb3NpbmcgUGxlbmFyeQo+ID4gPiAyMDow
MCAgTFBDIENsb3NpbmcgUGFydHkKPiA+ID4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiA+ID4gS3N1bW1pdC1kaXNjdXNzIG1haWxpbmcgbGlzdAo+ID4g
PiBLc3VtbWl0LWRpc2N1c3NAbGlzdHMubGludXhmb3VuZGF0aW9uLm9yZwo+ID4gPiBodHRwczov
L2xpc3RzLmxpbnV4Zm91bmRhdGlvbi5vcmcvbWFpbG1hbi9saXN0aW5mby9rc3VtbWl0LWRpc2N1
c3MKCgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENvcnBvcmF0
aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KS3N1bW1pdC1kaXNjdXNzIG1h
aWxpbmcgbGlzdApLc3VtbWl0LWRpc2N1c3NAbGlzdHMubGludXhmb3VuZGF0aW9uLm9yZwpodHRw
czovL2xpc3RzLmxpbnV4Zm91bmRhdGlvbi5vcmcvbWFpbG1hbi9saXN0aW5mby9rc3VtbWl0LWRp
c2N1c3MK
