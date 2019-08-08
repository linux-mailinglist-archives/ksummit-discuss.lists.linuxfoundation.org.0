Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BA5859BE
	for <lists@lfdr.de>; Thu,  8 Aug 2019 07:25:26 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 5F31DB65;
	Thu,  8 Aug 2019 05:25:06 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 22AF7AF0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 Aug 2019 05:25:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
	[148.163.158.5])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 39A3D7D2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  8 Aug 2019 05:25:02 +0000 (UTC)
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
	x785I76d011669 for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 8 Aug 2019 01:25:01 -0400
Received: from e06smtp04.uk.ibm.com (e06smtp04.uk.ibm.com [195.75.94.100])
	by mx0b-001b2d01.pphosted.com with ESMTP id 2u89gq7vtj-1
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NOT)
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 08 Aug 2019 01:25:01 -0400
Received: from localhost
	by e06smtp04.uk.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use
	Only! Violators will be prosecuted
	for <ksummit-discuss@lists.linuxfoundation.org> from
	<ajd@linux.ibm.com>; Thu, 8 Aug 2019 06:25:00 +0100
Received: from b06cxnps4076.portsmouth.uk.ibm.com (9.149.109.198)
	by e06smtp04.uk.ibm.com (192.168.101.134) with IBM ESMTP SMTP Gateway:
	Authorized Use Only! Violators will be prosecuted; 
	(version=TLSv1/SSLv3 cipher=AES256-GCM-SHA384 bits=256/256)
	Thu, 8 Aug 2019 06:24:58 +0100
Received: from d06av23.portsmouth.uk.ibm.com (d06av23.portsmouth.uk.ibm.com
	[9.149.105.59])
	by b06cxnps4076.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with
	ESMTP id x785OvGt27787362
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=OK); Thu, 8 Aug 2019 05:24:57 GMT
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 271C6A4051;
	Thu,  8 Aug 2019 05:24:57 +0000 (GMT)
Received: from d06av23.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id D055EA4040;
	Thu,  8 Aug 2019 05:24:56 +0000 (GMT)
Received: from ozlabs.au.ibm.com (unknown [9.192.253.14])
	by d06av23.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Thu,  8 Aug 2019 05:24:56 +0000 (GMT)
Received: from [9.102.61.127] (unknown [9.102.61.127])
	(using TLSv1.2 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by ozlabs.au.ibm.com (Postfix) with ESMTPSA id 4F037A0210;
	Thu,  8 Aug 2019 15:24:54 +1000 (AEST)
From: Andrew Donnellan <ajd@linux.ibm.com>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	Mark Brown <broonie@kernel.org>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
	<alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
	<s5hwoh4q2pn.wl-tiwai@suse.de> <20190629112055.GB2793@sirena.org.uk>
	<20190630130154.1b5cf991@coco.lan>
	<7d2e5632-819d-f5dd-072e-13d8b4e34abb@linux.ibm.com>
Date: Thu, 8 Aug 2019 15:24:48 +1000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <7d2e5632-819d-f5dd-072e-13d8b4e34abb@linux.ibm.com>
Content-Language: en-AU
X-TM-AS-GCONF: 00
x-cbid: 19080805-0016-0000-0000-0000029C21BE
X-IBM-AV-DETECTION: SAVI=unused REMOTE=unused XFE=unused
x-cbparentid: 19080805-0017-0000-0000-000032FC2302
Message-Id: <84339269-1575-83a0-87d1-1a9ee7e55f53@linux.ibm.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
	definitions=2019-08-08_01:, , signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	priorityscore=1501
	malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0
	clxscore=1015 lowpriorityscore=0 mlxscore=0 impostorscore=0
	mlxlogscore=999 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-1906280000 definitions=main-1908080059
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: "'patchwork@lists.ozlabs.org'" <patchwork@lists.ozlabs.org>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
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

T24gMS83LzE5IDExOjM1IGFtLCBBbmRyZXcgRG9ubmVsbGFuIHdyb3RlOgo+IE9uIDEvNy8xOSAy
OjAxIGFtLCBNYXVybyBDYXJ2YWxobyBDaGVoYWIgd3JvdGU6Cj4+IEVtIFNhdCwgMjkgSnVuIDIw
MTkgMTI6MjA6NTUgKzAxMDAKPj4gTWFyayBCcm93biA8YnJvb25pZUBrZXJuZWwub3JnPiBlc2Ny
ZXZldToKPj4KPj4+IE9uIFNhdCwgSnVuIDI5LCAyMDE5IGF0IDA5OjE4OjI4QU0gKzAyMDAsIFRh
a2FzaGkgSXdhaSB3cm90ZToKPj4+Cj4+Pj4gQlRXLCBjYW4gdGhlIFVSTCBiZSByZWFjaGVkIGZy
b20gcGF0Y2h3b3JrP8KgIFRoYXQnZCBiZSByZWFsbHkgaGFuZHkuCj4+Pgo+Pj4gRXZlbiBiZXR0
ZXIsIGNvdWxkIHBhdGNod29yayBhZGQgaXQgdG8gdGhlIG1ib3hlcyB5b3UgZG93bmxvYWQgZnJv
bSBpdAo+Pj4gbGlrZSBhY2tzIGFuZCBzbyBvbj/CoCBDdXJyZW50bHkgeW91IGNhbiBnZXQgdGhl
IG1lc3NhZ2UgSUQgc28gaXQncyBlYXN5Cj4+PiB0byBjb25zdHJ1Y3QgdGhlIGxpbmsgZm9yIHRo
aW5ncyB0aGF0IGFyZSBvbiBMS01MLgo+Pgo+PiBJJ20gYWxsIGZvciBpdCwgYnV0IHRoZSBwcm9i
bGVtIHdpdGggcGF0Y2h3b3JrIGlzIHRoYXQgdGhlIHRvb2wgbWF5IGJlIAo+PiB1c2VkCj4+IG9u
IG5vbi1rZXJuZWwgZGV2ZWxvcG1lbnQgYW5kL29yIHRoZSBNTCBtYXkgbm90IGJlIGluIGxvcmUu
Cj4+Cj4+IEFsc28sIHRoZXJlIGFyZSBtb3JlIHRoYW4gb25lIHBhdGNod29yayBpbnN0YW5jZS4g
V2UgdXNlIG91ciBvd24gZm9yCj4+IExpbnV4IG1lZGlhIChodHRwczovL3BhdGNod29yay5saW51
eHR2Lm9yZylbMV0uCj4+Cj4+IE9uIG1lZGlhLCBwYXRjaHdvcmsgaXMgdXNlZCBmb3IgYm90aCBL
ZXJuZWwgZGV2ZWxvcG1lbnQgYW5kIFZEUgo+PiBkZXZlbG9wbWVudCAoYW4gdXNlcnNwYWNlIHRv
b2wpIC0gd2l0aCBpcyBhIGNvbXBsZXRlbHkgdW5yZWxhdGVkCj4+IHByb2plY3QgKHdpdGggZGlm
ZmVyZW50IHBlb3BsZSBiZWhpbmQgaXQgLSBhbmQgZXZlbiBhIGRpZmZlcmVudCBtYWlsaW5nCj4+
IGxpc3QpLgo+Pgo+PiBTbywgd2hhdGV2ZXIgY2hhbmdlIGF0IHBhdGNod29yayBzaG91bGQgYmUg
ZG9uZSBpbiBhIHdheSB0aGF0IHRoZQo+PiBNTCBVUkwgY291bGQgYmUgY3VzdG9taXplZCwgYW5k
IHRoZSBuZXcgZmllbGQgd291bGQgYmUgYWRkZWQgb25seQo+PiBpZiB0aGUgVVJMIGlzIG5vdCBi
bGFuay4KPiAKPiBbKyBwYXRjaHdvcmsgbGlzdF0KPiAKPiBJJ2xsIGhhdmUgYSBnbyBhdCBhZGRp
bmcgYSBwcm9qZWN0L2xpc3Qtc3BlY2lmaWMgYXJjaGl2ZSBwcmVmaXggYW5kIAo+IGV4cG9zaW5n
IHRoYXQgaW4gdGhlIHdlYiBpbnRlcmZhY2UuCgpJJ3ZlIG5vdyBzdWJtaXR0ZWQgcGF0Y2hlcyB0
byBhZGQgYSBtYWlsaW5nIGxpc3QgYXJjaGl2ZSBsaW5rIGZvciBlYWNoIApwYXRjaCB2aXNpYmxl
IHZpYSB0aGUgd2ViIGludGVyZmFjZSBhbmQgYWxzbyB2aWEgdGhlIFJFU1QgQVBJLgoKPiBSZWdh
cmRpbmcgYWRkaW5nIGl0IHRvIGRvd25sb2FkZWQgbWJveGVzLCBpZiB3ZSBkbyB0aGF0IEknZCBs
aWtlIGl0IHRvIAo+IGJlIGEgc2VwYXJhdGUgb3B0aW9uLiBBIHNpbmdsZSBwYXRjaCBjYW4gYWxz
byBsYW5kIGluIHBhdGNod29yayBtdWx0aXBsZSAKPiB0aW1lcyB2aWEgdmFyaW91cyBsaXN0cywg
c28gdGhlIFVSTCB3aWxsIGRlcGVuZCBvbiB3aGljaCBwcm9qZWN0IHlvdSdyZSAKPiBsb29raW5n
IGF0LgoKSGF2ZW4ndCBkb25lIHRoaXMgYml0IHlldC4KCi0tIApBbmRyZXcgRG9ubmVsbGFuICAg
ICAgICAgICAgICBPekxhYnMsIEFETCBDYW5iZXJyYQphamRAbGludXguaWJtLmNvbSAgICAgICAg
ICAgICBJQk0gQXVzdHJhbGlhIExpbWl0ZWQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCktzdW1taXQtZGlzY3VzcyBtYWlsaW5nIGxpc3QKS3N1bW1pdC1k
aXNjdXNzQGxpc3RzLmxpbnV4Zm91bmRhdGlvbi5vcmcKaHR0cHM6Ly9saXN0cy5saW51eGZvdW5k
YXRpb24ub3JnL21haWxtYW4vbGlzdGluZm8va3N1bW1pdC1kaXNjdXNzCg==
