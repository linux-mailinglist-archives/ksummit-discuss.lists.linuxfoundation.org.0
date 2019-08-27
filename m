Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C9E9F2BE
	for <lists@lfdr.de>; Tue, 27 Aug 2019 20:55:53 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7988E1B55;
	Tue, 27 Aug 2019 18:55:43 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 81DDE1B39
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 18:55:41 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com
	[209.85.160.194])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 255A389B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 18:55:41 +0000 (UTC)
Received: by mail-qt1-f194.google.com with SMTP id v38so135137qtb.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 27 Aug 2019 11:55:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=NtaBIbKzlziY4mzePaPZIjrT7Sjae/S6cMrutbRpZZU=;
	b=Amo01lGKtp4fp1LQ/pI1wq6fPWUBdwXFbAHjW0jpGgkuw4jDJqgBXQrIh9kS36yc1h
	B3gvR4xf89EaB20Ah5cuLJwDLO8hL3IPuZtvHhdRqsaptuI78C3ScBMtb0P51EbpT2wH
	tle+2XJrWoTloJsvDKLm4rwXFJE6A3SpAaMxoZSUdnmOeKEgR27Vuee2mN21frqsrrU1
	A/WXikVS7HH0XwEl6CEs00U9zzRN+GF5ib6x+OQMjOUXS9Ovsj5ERGQSit66fI5KBDYw
	6OtVO9kPkwuc3EocY004jQVE5JgaKn9Q+COPfJX4aPbr70/3EnjoolO9AjAdZkFK1vIm
	vnHQ==
X-Gm-Message-State: APjAAAUWR8EP4UoimWAFZojxLIBAOHFzU8t+sL+TMkq4HIlbVHKVe2K3
	B6zUcx3fLJA9Z8iXdz12wygzgjCTsS4nyhX6MhVmpv5B
X-Google-Smtp-Source: APXvYqxqJWzszO6RfPBKdNuU05gnvVlUXRjdxf6TRLYYFbWHgXIAZ3GLgoQwADSkXofdpg5KxXZu8G75j4FIVPEsX2c=
X-Received: by 2002:aed:3fe9:: with SMTP id w38mr348587qth.180.1566932140237; 
	Tue, 27 Aug 2019 11:55:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
	<20190826230206.GC28066@mit.edu>
	<CACT4Y+aMkb4OTPwbXP1U8wtoV2oaLh+P-FoxG9N5m63kt-kGyw@mail.gmail.com>
	<alpine.DEB.2.21.1908270806060.1939@nanos.tec.linutronix.de>
	<CACT4Y+a2E9FBba4f2iEmQKzO=gNe0cdyW+Pqq8YyiMaOTOu3fg@mail.gmail.com>
	<20190827134836.GB25038@kroah.com>
	<dc1a4c98-5e29-094c-ead8-889df35de811@roeck-us.net>
	<alpine.DEB.2.21.1908271607440.1939@nanos.tec.linutronix.de>
	<20190827153344.GC534@kroah.com>
In-Reply-To: <20190827153344.GC534@kroah.com>
From: Konstantin Ryabitsev <mricon@kernel.org>
Date: Tue, 27 Aug 2019 14:55:28 -0400
Message-ID: <CAMwyc-RX7Sin1W=m8OXeq81TqT1Auhuxm=htgekXFpHHdgu3Yg@mail.gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
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

T24gVHVlLCAyNyBBdWcgMjAxOSBhdCAxMTozMywgR3JlZyBLcm9haC1IYXJ0bWFuCjxncmVna2hA
bGludXhmb3VuZGF0aW9uLm9yZz4gd3JvdGU6Cj4gPiAgICAgICAgTGluazogaHR0cHM6Ly9sa21s
Lmtlcm5lbC5vcmcvJE1lc3NhZ2UtSUQKPiA+Cj4gPiB0aGVuIHlvdSBoYXZlIHlvdXIgVVVJRCB0
YWcuIFRoZSB0aXAgYm90IHNlbmRzIHlvdSBhIHJlcGx5IGJhc2VkIG9uIHRoYXQKPiA+IHRhZyBh
bmQgSSBrbm93IHlvdSBnb3Qgc29tZSBvZiB0aGVtIGFscmVhZHkuCj4KPiBJJ20gdXNpbmc6Cj4g
ICAgICAgICAgICAgTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8kbWVzc2FnZS1pZAo+
Cj4gc2hvdWxkIHdlIHN0YW5kYXJkaXplIG9uIHRoZSBsa21sIG9uZSBpbnN0ZWFkIGFzIGl0J3Mg
c2hvcnRlcj8gIFRoZSBsb3JlCj4gb25lIGhhbmRsZXMgYW55IG1lc3NhZ2UgaWQgdGhhdCBpcyBv
biBhbnkgbWFpbGluZyBsaXN0IGl0IGhhbmRsZXMsIGlzCj4gdGhlIGxrbWwgb25lIHRoZSBzYW1l
PwoKSXQncyB0aGUgZXhhY3Qgc2FtZSBzeXN0ZW0gYW5kIHRoZSAvci8gaXMgYWx3YXlzIHJlcXVp
cmVkLiBJIHByZWZlcgpsb3JlLmtlcm5lbC5vcmcgYmVjYXVzZSBpdCBkb2Vzbid0IGltcGx5IHRo
YXQgdGhlIG1lc3NhZ2UgaXMgZ29pbmcgdG8KYmUgb24gdGhlIExLTUwgKGkuZS4gaXQgY2FuIGJl
IG9uIGEgbGlzdCB0aGF0IGlzbid0IGV2ZW4gaG9zdGVkIG9uCnZnZXIua2VybmVsLm9yZykuCgpT
bywgbXkgcmVjb21tZW5kYXRpb24gaXMgTGluazogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8k
bWVzc2FnZS1pZAoKUmVnYXJkcywKLS0gCktvbnN0YW50aW4gUnlhYml0c2V2Cktlcm5lbC5vcmcg
U3lzdGVtcyBBZG1pbmlzdHJhdG9yCk1vbnTDqWFsLCBRdcOpYmVjCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCktzdW1taXQtZGlzY3VzcyBtYWlsaW5nIGxp
c3QKS3N1bW1pdC1kaXNjdXNzQGxpc3RzLmxpbnV4Zm91bmRhdGlvbi5vcmcKaHR0cHM6Ly9saXN0
cy5saW51eGZvdW5kYXRpb24ub3JnL21haWxtYW4vbGlzdGluZm8va3N1bW1pdC1kaXNjdXNzCg==
