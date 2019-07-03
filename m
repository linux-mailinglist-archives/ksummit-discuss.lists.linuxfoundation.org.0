Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 555BC5E743
	for <lists@lfdr.de>; Wed,  3 Jul 2019 16:59:22 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0DDBC10DE;
	Wed,  3 Jul 2019 14:59:09 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CB04410B7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 14:57:20 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6C431836
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 14:57:20 +0000 (UTC)
Received: by mail-qk1-f171.google.com with SMTP id v22so2957043qkj.8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 03 Jul 2019 07:57:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=zQYluvGusQGL+14HwDfs7mihs/ID4D1jvz0JNacCoiM=;
	b=QEfnb8yFk178Wn6EDdXhv1l1b2BUMGB8ikpxZQlp8y6gF8yObSO5dPx5hj2IPQ/Sn7
	0yleQf7NZQOdPG52AqzKElZDqIhBf2+sS/dcJXIkEk88SlgZGqvDqW/Ifl5Jwtay2YZY
	Pluy1ZAbC3uktKwd60ws6lCC1S5ENbPjE+GdUaQd4RjOS4niX4u0Insm4jJBdnjBw7GT
	83tlpyGyzQNb/mkLLnXv94n2UblP3X5J0B9GxIfiL79UMXEtILqydO/J/nXH0dm1LmqH
	Hiq/RNwFxLkDaleBXdICX5i1kNXAe+6abtjw2o31nr0LYIqIualnKgOxyil1SfgOTI1x
	sfyQ==
X-Gm-Message-State: APjAAAVqZpZ2/vQ91VFNckLO5/reSyJIzk4JIflqHIQaXB9x89Yu8PYm
	jnM75aa+XOnU1J0lwBE1BQ6NTZ+kiG8=
X-Google-Smtp-Source: APXvYqyqteO3Ue6yCO0zqFJsZ004fSQwqOdGQUowkrz4yOPKTAaGRcyr7xLqjkaOOPWKcmlnrWD+zw==
X-Received: by 2002:a37:490d:: with SMTP id w13mr29406357qka.179.1562165839190;
	Wed, 03 Jul 2019 07:57:19 -0700 (PDT)
Received: from [192.168.1.157] (pool-96-235-39-235.pitbpa.fios.verizon.net.
	[96.235.39.235])
	by smtp.gmail.com with ESMTPSA id v7sm1028645qto.91.2019.07.03.07.57.18
	(version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
	Wed, 03 Jul 2019 07:57:18 -0700 (PDT)
To: Sasha Levin <sashal@kernel.org>, ksummit-discuss@lists.linuxfoundation.org
References: <20190703013557.GQ11506@sasha-vm>
From: Laura Abbott <labbott@redhat.com>
Message-ID: <22d97d73-0f3f-7786-f9c5-d22b1b0df46b@redhat.com>
Date: Wed, 3 Jul 2019 10:57:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190703013557.GQ11506@sasha-vm>
Content-Language: en-US
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
 automation and improvement
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

T24gNy8yLzE5IDk6MzUgUE0sIFNhc2hhIExldmluIHdyb3RlOgo+IEhpIGZvbGtzLAo+IAo+IElm
IHRoZXJlIGlzIGludGVyZXN0LCBJJ2QgbGlrZSB0byBnbyBvdmVyIHRoZSAobWlub3IpIGNoYW5n
ZXMgdGhhdCB3ZW50Cj4gaW50byB0aGUgLXN0YWJsZSBrZXJuZWwgcHJvY2VzcyBzaW5jZSBsYXN0
IHllYXIncyBNUywgdGhlIHZhcmlvdXMKPiBhdXRvbWF0aW9ucyB3ZSBub3cgaGF2ZSwgYW5kIGhv
dyB3ZSBoYXZlIGFkZHJlc3NlZCBzb21lIG9mIHRoZSBwYWluCj4gcG9pbnRzIHRoYXQgY2FtZSB1
cCBsYXN0IHllYXIuIEknZCBhbHNvIGxvdmUgdG8gaGVhciBmcm9tIGZvbGtzIGFib3V0Cj4gdGhl
IGlzc3VlcyB0aGV5J3JlIHNlZWluZyB3aXRoIHRoZSBwcm9jZXNzLCBhbmQgaWYgdGhlcmUncyBh
bnl0aGluZyB3ZQo+IGNhbiBkbyB0byBtYWtlIGl0IGJldHRlci4KPiAKPiBTb21lIG9mIHRoZSBj
b25jZXJucyB0aGF0IHdlcmUgcmFpc2VkIGR1cmluZyBsYXN0IHllYXIncyBNUyAoYm90aCBpbiB0
aGUKPiBncm91cCBzZXNzaW9uIGFzIHdlbGwgYXMgaW4gdGhlIGhhbGx3YXkgdHJhY2spIHdoaWNo
IHdlJ3ZlIHRyaWVkIHRvCj4gYWRkcmVzcyBhcmU6Cj4gCj4gLSBDb21taXRzIG1pc3NpbmcgYmVj
YXVzZSBhdXRob3JzIGRpZCBub3QgcmVzcG9uZCB0byBHcmVnJ3MgIkZBSUxFRDoiCj4gIMKgIG1h
aWxzLgo+IC0gQ29uY2VybnMgYWJvdXQgaG93IHdlbGwgLXN0YWJsZSBrZXJuZWxzIGFyZSB0ZXN0
ZWQuCj4gLSAiRml4ZXMgZm9yIGZpeGVzIiBlbmQgdXAgYmVpbmcgbWlzc2VkLgo+IC0gU2FuZXIg
QVVUT1NFTCBwcm9jZXNzLgo+IC0gVHJhY2tpbmcgb2YgZHJvcHBlZCBjb21taXRzLgo+IAo+IEkg
Zm91bmQgbGFzdCB5ZWFycyBmZWVkYmFjayB2ZXJ5IHZhbHVhYmxlIGFuZCBob3BlZnVsbHkgaGF2
ZSBhZGRyZXNzZWQKPiBzb21lIG9mIGl0LCBob3BpbmcgZm9yIHRoZSBzYW1lIHRoaXMgeWVhciBh
cyB3ZWxsLgoKSSdtIGNlcnRhaW5seSBpbnRlcmVzdGVkIGluIHRoaXMuCgpUaGFua3MsCkxhdXJh
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCktzdW1taXQt
ZGlzY3VzcyBtYWlsaW5nIGxpc3QKS3N1bW1pdC1kaXNjdXNzQGxpc3RzLmxpbnV4Zm91bmRhdGlv
bi5vcmcKaHR0cHM6Ly9saXN0cy5saW51eGZvdW5kYXRpb24ub3JnL21haWxtYW4vbGlzdGluZm8v
a3N1bW1pdC1kaXNjdXNzCg==
