Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 883356BF6D
	for <lists@lfdr.de>; Wed, 17 Jul 2019 18:06:18 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id B2556E22;
	Wed, 17 Jul 2019 16:05:57 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 42131DC3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 16:05:55 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-lf1-f67.google.com (mail-lf1-f67.google.com
	[209.85.167.67])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A15C58AA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 16:05:54 +0000 (UTC)
Received: by mail-lf1-f67.google.com with SMTP id c19so16904472lfm.10
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 09:05:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=iz/x39WRQuN+/Nl5HXqyjaEQRbKSfxoDnReqIHARo+8=;
	b=lSfS4IS3bN3xhjg+Tfep7EtUEFQEe6sOvmuzkCUbXAQZAgKI6+DC8yJTQxMPTmRcv2
	h4g3DkosgcO/KwZofW6VTv1J89cwYkFA+XO8d0BhtWpsf1pGdWYxpqj3iJQDWalj8we5
	vJQ7IXRlAKtN9TB3K7ehA+27/k6hU4lgFKFPQc6Ql1jmgnDXN2+dxs8cR/ioA4vrxi9y
	PISAERfsjmttYx4Nk9lKees+dTTKPaC+Wj8qxNej7pNRWdApIg/bZVSyONMgHbyAwLWz
	++tGger+5MkK30OV3auD1MwQv/EpZV4n1CF+E5BQYAj2EzTiIUd2kHEEBnYPCptsl/4R
	t9MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=iz/x39WRQuN+/Nl5HXqyjaEQRbKSfxoDnReqIHARo+8=;
	b=KgfbAad1Uh27wyQe/AO0zNRvWjrEwzODu/dFWy8ShC8Gn48PEGEQlou08TYdnFEdte
	uLJPeynmk+d34EplgGtpXEd6evHjpJVIElGDtnE8HoUaj7L1jasYQm4oGSj+I9z7Czcw
	eSAu+qENniBcrPpyAs+yqmYp+aZmMsCuIDab+73GezXu3o8RYJo2oanyjTyvyo01vSDA
	qici6otl9wPBuT8XaNDNIQcgDxpqXt801deSQCxtlzgfHmso8/hZZzs8Asvoj64j5sJg
	7hJIzKMo2hpr7ZDwc9qGc/s52HpdEleRSV6eW5kQj2G+t/vDlMCyTI06SRPSBgQu9nyF
	0z7w==
X-Gm-Message-State: APjAAAU1vF3wt07b/QJqDSQmF4bq21pujXyjvaFt/mMYrGAXIjUhU3Bu
	6WzkoXNyvd5TpI41TnjRUe+B5YbtFreKaA+YFEHQew==
X-Google-Smtp-Source: APXvYqzUk0yxJFAYUzuIBebJJrtFBTDlcO+EYqG/oCrikMzj66Ig+KvUn0RHkLeMGcR+RgfVyEzowcD7CEaabtdCPaw=
X-Received: by 2002:ac2:4891:: with SMTP id x17mr18945937lfc.60.1563379553045; 
	Wed, 17 Jul 2019 09:05:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190706142738.GA6893@kunai> <20190714103509.2dd72c90@archlinux>
	<alpine.DEB.2.21.1907141157410.1669@nanos.tec.linutronix.de>
	<20190716211636.GA6679@kunai>
	<CAOesGMgaw3Xq4gCkSsyHW_n8ETkpSKwe5f_oBsz_+s3c+XsnTA@mail.gmail.com>
	<alpine.DEB.2.21.1907170026200.1767@nanos.tec.linutronix.de>
	<bf269ea7-6a9c-25db-5b97-958d9e15bddd@infradead.org>
	<20190717073130.GA1021@kunai>
In-Reply-To: <20190717073130.GA1021@kunai>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 17 Jul 2019 18:05:41 +0200
Message-ID: <CACRpkdbydfyx8LMG8FzCzAYsTP9n57K0yw9_04wgtDSjm+B3iQ@mail.gmail.com>
To: Wolfram Sang <wsa@the-dreams.de>
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Keeping reviews
	meaningful
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

T24gV2VkLCBKdWwgMTcsIDIwMTkgYXQgOTozMSBBTSBXb2xmcmFtIFNhbmcgPHdzYUB0aGUtZHJl
YW1zLmRlPiB3cm90ZToKCj4gR3V5cywgSSBhbSBqdXN0IHRyeWluZyB0byBiZXR0ZXIgY29wZSB3
aXRoIGFuIGFtb3VudCBvZiBwYXRjaGVzIEkgY2FuJ3QKPiBoYW5kbGUgb24gbXkgb3duIGN1cnJl
bnRseS4KCk1haW50YWluZXJzIGRvbid0IHNjYWxlIHJpZ2h0PyA6LwoKV2hhdCBJIHRlbmQgdG8g
ZG8gaXMgZ2l0IGxvZyBvbiB3aGF0ZXZlciBpcyBhZmZlY3RlZCBieSBhIHBhdGNoCmFuZCB0aGVu
IHBpY2sgc29tZSBwZW9wbGUgd2hvIHRvdWNoZWQgdGhlIGNvZGUgcmVjZW50bHkKYW5kIGp1c3Qg
YWRkIHRoZW0gdG8gQ0MgYW5kIGFzayB0aGVtIHRvIGhlbHAuIFRoaXMgaXMgZXNwZWNpYWxseQpu
aWNlIHdpdGggZHJpdmVycyBhcyBJIGNhbiBxdWlja2x5IHNlZSAoYnkgaW50dWl0aW9uKSB3aGV0
aGVyCnRoZXkgYXJlIGRvaW5nIHNvbWUgZ2VuZXJhbCBjbGVhbnVwIG9yIGFjdHVhbGx5IGFyZSBy
dW5uaW5nCmFuZCB0ZXN0aW5nIHRoZSBoYXJkd2FyZSwgZXZlbiBpZiB0aGV5IGRpZG4ndCBzaWdu
IHVwIGFzCm1haW50YWluZXJzLiBTb21ldGltZXMgbnVkZ2UgdGhlbSB0byBtYWludGFpbiB0aGUg
c3R1ZmYKdGhleSBzZWVtIHNvIGludGltYXRlIHdpdGggYnkgYWRkaW5nIHRoZW1zZWx2ZXMgdG8K
TUFJTlRBSU5FUlMuIElmIGl0IHdhcyBhIHdoaWxlIHNpbmNlIHRoZXkgZGlkIHRoZSBjaGFuZ2Vz
Ckkgb2Z0ZW4gZG8gZ2l0IGxvZyBhbmQgZ3JlcCBmb3IgdGhlaXIgbmFtZSBhcyB0aGV5IG9mdGVu
Cmp1c3QgY2hhbmdlZCBlbWFpbCBhZGRyZXNzLgoKSXQgd291bGQgYmUgcmVhbGx5IG5lYXQgaWYg
Z2V0X21haW50YWluZXIgY291bGQgZG8gdGhpcyBidXQgSQp0aGluayBpdCByZXF1aXJlcyByZWFs
IGludGVsbGlnZW5jZSByYXRoZXIgdGhhbiBwYXR0ZXJuLW1hdGNoaW5nLgoKSnVzdCBteSDigqww
LjAxCgpMaW51cyBXYWxsZWlqCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCktzdW1taXQtZGlzY3VzcyBtYWlsaW5nIGxpc3QKS3N1bW1pdC1kaXNjdXNzQGxp
c3RzLmxpbnV4Zm91bmRhdGlvbi5vcmcKaHR0cHM6Ly9saXN0cy5saW51eGZvdW5kYXRpb24ub3Jn
L21haWxtYW4vbGlzdGluZm8va3N1bW1pdC1kaXNjdXNzCg==
