Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 47546A0B26
	for <lists@lfdr.de>; Wed, 28 Aug 2019 22:14:43 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 241522C45;
	Wed, 28 Aug 2019 20:14:27 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id AE5B32B82
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 20:14:11 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com
	[209.85.208.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id EF05BEC
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 20:14:10 +0000 (UTC)
Received: by mail-lj1-f171.google.com with SMTP id f9so729653ljc.13
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 28 Aug 2019 13:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=nOmW+0NAi8PUx27CM3gSLxCzR607+5SH9O26NanG+Mg=;
	b=G02vl8XD0jFcqh3ZIdhP236nMeYe8TwRVn40pbm+d0JQq8C3FeBx8vvebPtxv2nNLX
	E/ZpK11De+O6WHopxgq4gzZE0DEgTYRo7f5R30V5/QofR0o0rx06C9JXeQqSuFBABSCn
	UaZS14n6dFToluggJz86yi02hSe75/JLA3qKvgxFL6dP73oImLyJK5pGvFuZyFuC+con
	wtsqPXBbvugSs1MCGqJATOudNMt9XNmD5Y/+qCUGCufC1PeSkGALRMn8i6d8ay2gKj4B
	1bKzaSPyaaAMGFQdQR8bhsHTaYfcH7ouvTDufEJyfEAE4SnI3UrPG/ffNBGxvn1r8v8O
	KhZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=nOmW+0NAi8PUx27CM3gSLxCzR607+5SH9O26NanG+Mg=;
	b=Kjuoc6ffwT59gbzkTvRgU/IB5uAbuhHvM7+U23gxKeAsWu/z2gxtRPYVn8eTc1ogwE
	dBcePpCu9ZcCwzG6xTjElh/tC3QYpoSDGlmQgYhYYA475Hh/BhZH1bRbKKZ4Zl+v52ET
	mVNJhYty3TfCHsMMoaxXy5mUuI0wa4Mfwx2bxWJVWxm1SgGIcQGaagsbKmvcT4nZZKAU
	28WpubboGg7O6kPjw9LfG4CFhRXdJzYOngLkA4k0viQT4z7VHipV3TUtOBEbXWJSVadg
	Xx9h+d75CVPn4HXWMEk2BmXnizB8ZJUQmG8/MI7PvvsUqgE/93IjV3txS+OZw1BU6/s+
	/fWg==
X-Gm-Message-State: APjAAAXwKtkGTT10QbJbCfkzy3NxzzUGWZUTf1XkWX0+kQ1PbIDQLpDj
	vZC7rez6XLv0PGfqjADPusH78Nr5bX1hTIM8PjE=
X-Google-Smtp-Source: APXvYqy82ThbbEO9ZMTPVHakQXqdO/RxZbmQhakzdVlyvHHD2MIf/9ogZXxvxW2LXtXHNWMIXx3JRgPoU9vHCULVUE8=
X-Received: by 2002:a2e:144f:: with SMTP id 15mr2976734lju.226.1567023248982; 
	Wed, 28 Aug 2019 13:14:08 -0700 (PDT)
MIME-Version: 1.0
References: <20190826212548.GA15967@mit.edu>
In-Reply-To: <20190826212548.GA15967@mit.edu>
From: Dave Airlie <airlied@gmail.com>
Date: Thu, 29 Aug 2019 06:13:57 +1000
Message-ID: <CAPM=9txgVSybLWobvGfTiLLMcNgrqOg5nMpaVm41eT6Bkp+b0A@mail.gmail.com>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
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

T24gVHVlLCAyNyBBdWcgMjAxOSBhdCAwNzoyNSwgVGhlb2RvcmUgWS4gVHMnbyA8dHl0c29AbWl0
LmVkdT4gd3JvdGU6Cj4KPiBUaGlzIGlzIGEgZHJhZnQga2VybmVsIHN1bW1pdCB0cmFjayBzY2hl
ZHVsZS4gIFBsZWFzZSBsZXQgbWUga25vdyBvZgo+IGFueSBwb3RlbnRpYWwgY29uZmxpY3RzIG9y
IHNjaGVkdWxlIGNoYW5nZXMgdGhhdCB5b3UgbWlnaHQgbGlrZSB0bwo+IG1ha2UuCj4KPiBUaGUg
T3BlbiBTbG90cyB3aWxsIGJlIGF2YWlsYWJsZSBmb3IgbGFzdCBtaW51dGUgc2NoZWR1bGluZyBy
ZXF1ZXN0cywKPiB1bmNvbmZlcmVuY2Ugc3R5bGUuCgpIZXkgVGVkLAoKTm90IHN1cmUgd2hvIGlz
IGdpdmluZyB0aGUgTW9uZGF5IGdyYXBoaWNzIHRhbGsgYXQgMTI6MDAgY291bGQgSSBhc2sKeW91
IHRvIHB1c2ggdGhpcyBhIGJpdCBsYXRlci4gSSdtIHVuZm9ydHVuYXRlbHkgYXJyaXZpbmcgaW4g
TGlzYm9uIG9uCk1vbmRheSBtb3JuaW5nIGFuZCBJIHNob3VsZCBiZSBhdCB0aGUgdmVudWUgYnkg
MTI6MDAgYnV0IGl0IHdvdWxkIGJlCmdvb2QgdG8gZ3VhcmFudGVlIEkgY2FuIGF0dGVuZC4KCkRh
dmUuCgo+Cj4gVGhhbmtzIQo+Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIC0gVGVkCj4KPgo+IE1vbmRheSBTZXB0ZW1iZXIgOSwgMjAxOQo+Cj4gQU0gTUMnczogRGlz
dCBLZXJuZWxzLCBUcmFjaW5nIE1DLCBSSVNDLVYKPiBQTSBNQydzIFBNOiBJb1QsIFNjaGVkdWxl
ciwgSU9NTVUKPgo+IDEwOjAwICBSZXdvcmtpbmcgb2YgS1ZBIGFsbG9jYXRvciBpbiBMaW51eCBr
ZXJuZWwKPiAxMDo0NSAgVG91Y2ggYnV0IGRvbuKAmXQgbG9vazogUnVubmluZyB0aGUga2VybmVs
IGluIGV4ZWN1dGUgb25seSBtZW1vcnkKPiAxMTozMCAgQnJlYWsKPiAxMjowMCAgVXBzdHJlYW0g
R3JhcGhpY3M6IFRvbyBsaXR0bGUsIHRvbyBsYXRlCj4gMTI6NDUgIFRoZSBsaXN0IGlzIG91ciBw
cm9jZXNzOiBBbiBhbmFseXNpcyBvZiB0aGUga2VybmVsJ3MgZW1haWwtYmFzZWQgZGV2ZWxvcG1l
bnQgcHJvY2Vzcwo+IDEzOjMwICBMdW5jaAo+IDE1OjAwICBNYXBsZSBUcmVlCj4gMTU6NDUgIDxP
cGVuIHNsb3Q+Cj4gMTY6MzAgIEJyZWFrCj4gMTc6MDAgIElubGluZSBFbmNyeXB0aW9uIFN1cHBv
cnQKPiAxNzo0NSAgPE9wZW4gU2xvdD4KPiAxODozMCAgVEFCIEVsZWN0aW9ucwo+IDE5OjQ1ICBM
UEMgRXZlbmluZyBFdmVudAo+Cj4KPiBUdWVzZGF5IFNlcHRlbWJlciAxMCwgMjAxOQo+Cj4gQU0g
TUMnczogT3BlbiBQcmludGluZywgVG9vbGNoYWlucywgVGVzdGluZyBhbmQgRnV6emluZwo+IFBN
IE1DJ3M6IENvbnRhaW5lcnMsIEFuZHJvaWQsIFBvd2VyIG1hbmFnZW1udAo+Cj4gMTA6MDAgIE1l
bW9yeSBtYW5hZ2VtZW50IGJpdHMgaW4gYXJjaC8qCj4gMTA6NDUgIHJlcGxhY2luZyBtbWFwX3Nl
bSB3aXRoIGZpbmVyIGdyYWluZWQgbG9ja3MKPiAxMTozMCAgQnJlYWsKPiAxMjowMCAgS2lsbGlu
ZyB0aGUgbW1hcF9zZW0ncyBjb250ZW50aW9uCj4gMTI6NDUgIDxPcGVuIFNsb3Q+Cj4gMTM6MzAg
IEx1bmNoCj4gMTU6MDAgIFRyYWNpbmcgRGF0YSBBY2Nlc3MgUGF0dGVybiB3aXRoIEJvdW5kZWQg
T3ZlcmhlYWQgYW5kIEJlc3QtZWZmb3J0IEFjY3VyYWN5Cj4gMTU6NDUgIEludGVycnVwdCBNZXNz
YWdlIFN0b3JlOiBBIHNjYWxhYmxlIGludGVycnVwdCBtZWNoYW5pc20gZm9yIHRoZSBjbG91ZAo+
IDE2OjMwICBCcmVhawo+IDE3OjAwICBLZXJuZWwgRG9jdW1lbnRhdGlvbgo+IDE3OjQ1ICA8T3Bl
biBTbG90Pgo+Cj4gV2VkbmVzZGF5LCBTZXB0ZW1iZXIgMTEsIDIwMTkKPgo+IEFNIE1DJ3M6IFJE
TUEsIFJlYWwgVGltZSwgRGF0YWJhc2VzCj4gUE0gTUMnczogTGl2ZSBwYXRjaGluZywgQlBGLCBT
eXN0ZW0gYm9vdC9zZWN1cml0eQo+Cj4gMTA6MDAgIE1vdmluZyB0aGUgTGludXggQUJJIHRvIHVz
ZXJzcGFjZQo+IDEwOjQ1ICBLVW5pdCAtIFVuaXQgVGVzdGluZyBmb3IgdGhlIExpbnV4IEtlcm5l
bAo+IDExOjMwICBCcmVhawo+IDEyOjAwICBSZWZsZWN0aW9ucyBvbiBrZXJuZWwgcXVhbGl0eSwg
ZGV2ZWxvcG1lbnQgcHJvY2VzcyBhbmQgdGVzdGluZwo+IDEyOjQ1ICA8T3BlbiBTbG90Pgo+IDEz
OjMwICBMdW5jaAo+IDE1OjAwICBEZWNvdXBsaW5nIFpSQU0gZnJvbSBhIHNwZWNpZmljIGJhY2tl
bmQKPiAxNTo0NSAgPE9wZW4gU2xvdD4KPiAxNjozMCAgPEJyZWFrPgo+IDE3OjAwICA8T3BlbiBT
bG90Pgo+IDE3OjQ1ICA8Um9vbSBub3QgYXZhaWxhYmxlIC0tIHJlY29uZmlndXJhdGlvbiBmb3Ig
UGxlbmFyeT4KPiAxODozMCAgQ2xvc2luZyBQbGVuYXJ5Cj4gMjA6MDAgIExQQyBDbG9zaW5nIFBh
cnR5Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBL
c3VtbWl0LWRpc2N1c3MgbWFpbGluZyBsaXN0Cj4gS3N1bW1pdC1kaXNjdXNzQGxpc3RzLmxpbnV4
Zm91bmRhdGlvbi5vcmcKPiBodHRwczovL2xpc3RzLmxpbnV4Zm91bmRhdGlvbi5vcmcvbWFpbG1h
bi9saXN0aW5mby9rc3VtbWl0LWRpc2N1c3MKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KS3N1bW1pdC1kaXNjdXNzIG1haWxpbmcgbGlzdApLc3VtbWl0LWRp
c2N1c3NAbGlzdHMubGludXhmb3VuZGF0aW9uLm9yZwpodHRwczovL2xpc3RzLmxpbnV4Zm91bmRh
dGlvbi5vcmcvbWFpbG1hbi9saXN0aW5mby9rc3VtbWl0LWRpc2N1c3MK
