Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 836C0A395A
	for <lists@lfdr.de>; Fri, 30 Aug 2019 16:37:21 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 19613619B;
	Fri, 30 Aug 2019 14:37:08 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id E27C7618F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 14:36:12 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 99FDAF1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 14:36:12 +0000 (UTC)
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
	[24.9.64.241])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 34C3523407;
	Fri, 30 Aug 2019 14:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1567175772;
	bh=QN3Xc27klXnvMeI9Y2n2nTgJSLqZVSNqyITjzk29ePs=;
	h=Subject:To:References:From:Date:In-Reply-To:From;
	b=imfQrCvfHDQ1/c+Zzrzr0552J5V65kDYM1tQ2G426jbbq537LTBsIUPkRN6vnazUs
	9S5hKIrC5NuPWb1FbPO6W/SsBmFFklVrFaHEaYgDS/2fCoqcWqC6j39Qd72KWNatb2
	DXQGZVUjXAcbakBj2LdpEhSzUcoiFw6XnYDixDpc=
To: Shuah Khan <skhan@linuxfoundation.org>, "Theodore Y. Ts'o"
	<tytso@mit.edu>, ksummit-discuss@lists.linuxfoundation.org
References: <20190830031720.GA7490@mit.edu>
	<757b2868-5ac6-5da7-a064-0b8393e1aa41@linuxfoundation.org>
From: shuah <shuah@kernel.org>
Message-ID: <1b411421-9be2-9371-e072-e279383c062d@kernel.org>
Date: Fri, 30 Aug 2019 08:36:11 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <757b2868-5ac6-5da7-a064-0b8393e1aa41@linuxfoundation.org>
Content-Language: en-US
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: Re: [Ksummit-discuss] Topics for the Maintainer's Summit
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

T24gOC8zMC8xOSA3OjU4IEFNLCBTaHVhaCBLaGFuIHdyb3RlOgo+IE9uIDgvMjkvMTkgOToxNyBQ
TSwgVGhlb2RvcmUgWS4gVHMnbyB3cm90ZToKPj4gVGhlIGZvbGxvd2luZyB0b3BpY3MgaGF2ZSBi
ZWVuIHByb3Bvc2VkIGZvciB0aGUgbWFpbnRhaW5lcidzIHN1bW1pdCBvbgo+PiB0aGlzIGxpc3Q6
Cj4+Cj4+ICogU3F1YXNoaW5nIEJ1Z3MhwqDCoCAoU2h1YWggS2FobikKPj4gwqDCoMKgwqAgSG93
IGRvIHdlIGRlYWwgd2l0aCB0aGUgaGlnaCB2b2x1bWUgb2YgYnVncyByZXBvcnRlZCAoZXNwZWNp
YWxseQo+PiDCoMKgwqDCoCBieSBhdXRvbWF0ZWQgc3lzdGVtcyBsaWtlIHN5emJvdCkKPj4KCkkg
YW0gZXhwbG9yaW5nIGFuZCBkaXNjdXNzaW5nIGJyaW5naW5nIHN5emJvdCByZXByb2R1Y2VycyBh
bmQgYWRkIHRoZW0KdG8ga3NlbGZ0ZXN0IHJlZ3Jlc3Npb24gdGVzdHMgd2l0aCBEbWl0cnkuIEkg
d2lsbCBoYXZlIHRvIGNyZWF0ZSBhIGZldwprc2VsZnRlc3QgZnJhbWV3b3JrIGhvb2tzIHRvIHJ1
biB0aGVzZSBwZXJoYXBzLiBXZSBjYW4gZGlzY3VzcyB0aGF0IHdoZW4Kd2UgdGFsayBhYm91dCBz
eXpib3QgYnVncyBhbmQgaG93IHRvIGtlZXAgdXAgd2l0aCB0aGVtLgoKdGhhbmtzLAotLSBTaHVh
aApfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpLc3VtbWl0
LWRpc2N1c3MgbWFpbGluZyBsaXN0CktzdW1taXQtZGlzY3Vzc0BsaXN0cy5saW51eGZvdW5kYXRp
b24ub3JnCmh0dHBzOi8vbGlzdHMubGludXhmb3VuZGF0aW9uLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2tzdW1taXQtZGlzY3Vzcwo=
