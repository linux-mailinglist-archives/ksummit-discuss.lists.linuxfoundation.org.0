Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id A910D78C64
	for <lists@lfdr.de>; Mon, 29 Jul 2019 15:12:52 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id E08291848;
	Mon, 29 Jul 2019 13:12:37 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 138F2183E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Jul 2019 13:11:25 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 90B1189D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Jul 2019 13:11:24 +0000 (UTC)
Received: by mail-qk1-f178.google.com with SMTP id r6so44080110qkc.0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 29 Jul 2019 06:11:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=labbott.name; s=google;
	h=from:content-transfer-encoding:mime-version:subject:message-id:date
	:to; bh=bjdRzX0Wnuv06W9ZOjYsV/TvwHvCVTnveaGLwVj3hY8=;
	b=w2zajOovckgZ0uRo+V5oAZaetXn+WJ8f96+tARoAEbWrm2A2/Wc09s8zDzmJAfJX83
	5+XKe49MPW6PNB9Jk84PVCTBIl6vg6z1u38l7M2rjjPPMPIz9Cw3nOp889631PrkKcVo
	qsxjDEVxYDXEnSiT8XVa/3g3sWUZrVorw+Ea0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:message-id:date:to;
	bh=bjdRzX0Wnuv06W9ZOjYsV/TvwHvCVTnveaGLwVj3hY8=;
	b=UlfJo5OhG69WR3wUKL9VQ6tbBSX2LTISMlqDFk1pWJEh6Sw1s1U9o6e6Q3NqaZCNVo
	ndQh8P86bpzNu/Yigmxiy/iwQnCmrJeBMlxu+As7CQL1CZxYZAAuy/m4s/pphDRKADIM
	eMWokjyRMkh1YWGCj6LCFqJGOxkIr50xj1sdd4JkLrq/6f/WiWccBhtGEjbdVF8Mz3+t
	XCIeK50FRgnhGGHSW3YYTPf72SmTNyMDoNx5btiT+yHNDMdbKgK8RYghI1XICu7TyZf7
	6oP6Re7byu4zxlhODSSRlaEatW6OevhJ11wzXHJJZy8x4oQkV/67tDha0ojLyJenBNnl
	pEIw==
X-Gm-Message-State: APjAAAUhn7b6mkrDdIzqCPj34IuF1v5k1RuctvyunP1Ux9zt+4A3qnfW
	1PZw8OoKmK3N23l95QGFA6a6WzVGo60=
X-Google-Smtp-Source: APXvYqyPOn3VFjUa8gv8IydEIbqSgKn0gR/8dShNyDgBVwTTfOTJ3Qlo3OPAnXhzy5PXMJevVbxVrw==
X-Received: by 2002:a37:5d07:: with SMTP id r7mr71263637qkb.4.1564405883284;
	Mon, 29 Jul 2019 06:11:23 -0700 (PDT)
Received: from lauras-mbp.fios-router.home
	(pool-96-235-39-235.pitbpa.fios.verizon.net. [96.235.39.235])
	by smtp.gmail.com with ESMTPSA id
	b23sm37087674qte.19.2019.07.29.06.11.22
	for <ksummit-discuss@lists.linuxfoundation.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 29 Jul 2019 06:11:22 -0700 (PDT)
From: Laura Abbott <laura@labbott.name>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <4B8CE92E-C6B6-43B0-807F-932414A578D8@labbott.name>
Date: Mon, 29 Jul 2019 09:09:56 -0400
To: ksummit-discuss@lists.linuxfoundation.org
X-Mailer: Apple Mail (2.3273)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: [Ksummit-discuss] Linux Foundation Technical Advisory Board -- call
 for participation in a test vote
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

SGksCgpBcyBhIGZvbGxvdyB1cCB0byBjaGFuZ2VzIGluIHZvdGluZyBwcm9jZWR1cmVzWzFdIGZv
ciB0aGUgVGVjaG5pY2FsIEFkdmlzb3J5CkJvYXJkIChUQUIpLCB3ZSBhcmUgcnVubmluZyBhIHRl
c3Qgdm90ZS4gVGhlIGdvYWwgaXMgdG8gbGV0IGV2ZXJ5b25lIHNlZSB3aGF0CnZvdGluZyB3aWxs
IGxvb2sgbGlrZSBhbmQgaGVscCB0aGUgVEFCIG1lbWJlcnMgcnVubmluZyB0aGUgZWxlY3Rpb24g
c29ydCBvdXQKYW55IGlzc3VlcyB0aGF0IG1heSBhcmlzZS4gV2Ugd2lsbCBiZSB2b3Rpbmcgb24g
dHdvIHQtc2hpcnRzIGZvcgpHcmVnIEtyb2FoLUhhcnRtYW4gdG8gd2VhciBhdCBMaW51eCBQbHVt
YmVycyBDb25mZXJlbmNlIDIwMTkgaW4gTGlzYm9uLApQb3J0dWdhbC4gSGVyZSBhcmUgdGhlIG9w
dGlvbnMgZm9yIHdoYXQgd2lsbCBiZSBvbiB0aGUgdC1zaGlydDoKCi0gQXBwbGllZCwgVGhhbmtz
IQotIFRoaXMgZG9lc24ndCBhcHBseSB0byBteSB0cmVlIDooCi0gUGxlYXNlIHJlcG9ydCB0aGF0
IHRvIHlvdXIgZGlzdHJpYnV0aW9uCi0gT25lIGNoYW5nZSBwZXIgcGF0Y2gsIHBsZWFzZQotIFBs
ZWFzZSByZXNlbmQgd2l0aCBhIHByb3BlciBzdWJqZWN0CgpJZiB5b3Ugd291bGQgbGlrZSB0byBw
YXJ0aWNpcGF0ZSwgcGxlYXNlIGUtbWFpbCBtZSAob2ZmIGxpc3QgcHJlZmVyYWJseSkgYnkKQXVn
dXN0IDE4dGgsIDIzOjU5IFVUQ+KIkjA0OjAwICh0aGF0J3MgbWlkbmlnaHQgRURUKS4gVGhlIHBv
bGwgd2lsbCBydW4gZnJvbQpBdWd1c3QgMTl0aCB0byBBdWd1c3QgMjNyZCAyMzo1OSBVVEPiiJIw
NDowMCBhbmQgd2Ugd2lsbCBhbm5vdW5jZSB0aGUgcmVzdWx0cwpoZXJlLiAKCkFueW9uZSBtYXkg
cGFydGljaXBhdGUgaW4gdGhpcyB0ZXN0IHBvbGwgYW5kIHlvdSBhcmUgZW5jb3VyYWdlZCB0byBn
aXZlCmZlZWRiYWNrLiBJZiB5b3UgaGF2ZSBhbnkgcXVlc3Rpb25zLCBmZWVsIGZyZWUgdG8gY29u
dGFjdCB0aGUgVEFCIGF0CnRhYkBsaXN0cy5saW51eC1mb3VuZGF0aW9uLm9yZwoKVGhhbmtzLApM
YXVyYQoKWzFdIGh0dHBzOi8vbGlzdHMubGludXhmb3VuZGF0aW9uLm9yZy9waXBlcm1haWwva3N1
bW1pdC1kaXNjdXNzLzIwMTktSnVseS8wMDY1ODIuaHRtbApfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpLc3VtbWl0LWRpc2N1c3MgbWFpbGluZyBsaXN0Cktz
dW1taXQtZGlzY3Vzc0BsaXN0cy5saW51eGZvdW5kYXRpb24ub3JnCmh0dHBzOi8vbGlzdHMubGlu
dXhmb3VuZGF0aW9uLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tzdW1taXQtZGlzY3Vzcwo=
