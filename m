Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A1921ABE1
	for <lists@lfdr.de>; Fri, 10 Jul 2020 02:10:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id CDB77228F1;
	Fri, 10 Jul 2020 00:10:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id A8PZJhEA9pb3; Fri, 10 Jul 2020 00:10:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by silver.osuosl.org (Postfix) with ESMTP id 8259426FB5;
	Fri, 10 Jul 2020 00:10:55 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 52472C077B;
	Fri, 10 Jul 2020 00:10:55 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2DFDBC016F
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 00:10:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 1CF10897E9
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 00:10:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ed8w5ViD-aqP
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 00:10:51 +0000 (UTC)
X-Greylist: delayed 12:20:03 by SQLgrey-1.7.6
Received: from smtprelay.hostedemail.com (smtprelay0139.hostedemail.com
 [216.40.44.139])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 0869C89754
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 00:10:50 +0000 (UTC)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
 [10.5.19.251])
 by smtpgrave04.hostedemail.com (Postfix) with ESMTP id 5C96618017AC7
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 10 Jul 2020 00:03:36 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay06.hostedemail.com (Postfix) with ESMTP id A7CDB18224D61;
 Fri, 10 Jul 2020 00:03:33 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com, ,
 RULES_HIT:41:152:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1538:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:3138:3139:3140:3141:3142:3352:3622:3865:3867:3868:3870:3872:3874:4250:4321:4470:5007:7875:7903:10004:10400:10848:10967:11232:11658:11914:12050:12297:12663:12740:12895:13069:13311:13357:13894:14659:21080:21627:21939:30054:30090:30091,
 0, RBL:none, CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none,
 DomainCache:0, MSF:not bulk, SPF:, MSBL:0, DNSBL:none, Custom_rules:0:0:0,
 LFtime:1, LUA_SUMMARY:none
X-HE-Tag: road93_28114c626ec9
X-Filterd-Recvd-Size: 1979
Received: from XPS-9350.home (unknown [47.151.133.149])
 (Authenticated sender: joe@perches.com)
 by omf16.hostedemail.com (Postfix) with ESMTPA;
 Fri, 10 Jul 2020 00:03:32 +0000 (UTC)
Message-ID: <f4528fda927ddeb2bf78b8af77818d865e9e8b6b.camel@perches.com>
From: Joe Perches <joe@perches.com>
To: Valdis =?UTF-8?Q?Kl=C4=93tnieks?= <valdis.kletnieks@vt.edu>, Andrew Lunn
 <andrew@lunn.ch>
Date: Thu, 09 Jul 2020 17:03:30 -0700
In-Reply-To: <104986.1594328429@turing-police>
References: <edbf4ead-6f2d-e548-ee40-517b3ee6ba07@linuxfoundation.org>
 <alpine.DEB.2.22.394.2006131838130.2659@hadrien>
 <8dff373fabbbe6ae20512848e93dac7544e0abce.camel@perches.com>
 <20200618090442.GF6493@linux.ibm.com>
 <1f7ace6cd84dfc83f91a8150f396074b05d06b97.camel@perches.com>
 <20200709122118.0ffaea91@coco.lan>
 <60434f00e5bc55d2ceac14bb6a8c00d4d17c4e96.camel@perches.com>
 <20200709121136.GG781326@linux.ibm.com>
 <193e456a55a880b0f6755a3974f780bffbd8f19c.camel@perches.com>
 <20200709172914.GH781326@linux.ibm.com> <20200709175745.GB1014141@lunn.ch>
 <104986.1594328429@turing-police>
User-Agent: Evolution 3.36.3-0ubuntu1 
MIME-Version: 1.0
Cc: Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Documentation
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
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
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

T24gVGh1LCAyMDIwLTA3LTA5IGF0IDE3OjAwIC0wNDAwLCBWYWxkaXMgS2zEk3RuaWVrcyB3cm90
ZToKPiBPbiBUaHUsIDA5IEp1bCAyMDIwIDE5OjU3OjQ1ICswMjAwLCBBbmRyZXcgTHVubiBzYWlk
Ogo+IAo+ID4gSXQgc2VlbXMgbGlrZSAwLWRheSBhbmQgdGhlIGxpa2Ugd291bGQgYmUgYSBiZXR0
ZXIgc29sdXRpb24sIHNpbmNlCj4gPiB0aGV5IGtub3cgaG93IHRvIGFwcGx5IHRoZSBwYXRjaCwg
cnVuIHRvb2xzIG9uIHRoZSBzb3VyY2VzIGFzIGEgd2hvbGUsCj4gPiBhbmQgbG9vayBmb3IgbmV3
IHdhcm5pbmdzIG1peGVkIGluIHdpdGggb2xkZXIgd2FybmluZ3MuCltdCj4gKEZvciB0aGUgcmVj
b3JkLCBJJ20gT0sgd2l0aCBNYXNhaGlybyBZYW1hZGEncyBzdWdnZXN0aW9uIHRvIGFkZAo+IGEg
Vz1kIG9wdGlvbiB0byB0aGUgY3VycmVudCBXPTEyMyAtIHRoYXQncyBwcm9iYWJseSBhIGJldHRl
ciBpZGVhIHRoYW4KPiBteSBvcmlnaW5hbCBwYXRjaC4uLikKCkknbSBmaW5lIHdpdGggdGhhdCB0
b28uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KS3N1
bW1pdC1kaXNjdXNzIG1haWxpbmcgbGlzdApLc3VtbWl0LWRpc2N1c3NAbGlzdHMubGludXhmb3Vu
ZGF0aW9uLm9yZwpodHRwczovL2xpc3RzLmxpbnV4Zm91bmRhdGlvbi5vcmcvbWFpbG1hbi9saXN0
aW5mby9rc3VtbWl0LWRpc2N1c3MK
