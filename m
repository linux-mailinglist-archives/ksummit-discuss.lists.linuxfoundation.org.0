Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C69BF345222
	for <lists@lfdr.de>; Mon, 22 Mar 2021 22:57:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B99040447;
	Mon, 22 Mar 2021 21:57:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id w8wi2IzEMwqe; Mon, 22 Mar 2021 21:57:10 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8D5B840449;
	Mon, 22 Mar 2021 21:57:09 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1CE20C0001;
	Mon, 22 Mar 2021 21:57:08 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2F4DFC0001
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 21:57:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 168ED607F2
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 21:57:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 28OG1wfF9nSR
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 21:57:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 1A0BD607E6
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Mon, 22 Mar 2021 21:57:04 +0000 (UTC)
Received: from cwcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net
 [72.74.133.215]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 12MLuuMT020632
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 22 Mar 2021 17:56:57 -0400
Received: by cwcc.thunk.org (Postfix, from userid 15806)
 id 754A315C39CC; Mon, 22 Mar 2021 17:56:56 -0400 (EDT)
Date: Mon, 22 Mar 2021 17:56:56 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <YFkSqIN90S4a3HiF@mit.edu>
References: <613fe50d-fc9c-6282-f1f3-34653acb2ee9@leemhuis.info>
 <CAHk-=wgiYqqLzsb9-UpfH+=ktk7ra-2fOsdc_ZJ7WF47wS73CA@mail.gmail.com>
 <62b60247-7838-a624-706e-b1a54785b2a5@leemhuis.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <62b60247-7838-a624-706e-b1a54785b2a5@leemhuis.info>
Cc: ksummit <ksummit-discuss@lists.linuxfoundation.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 workflows@vger.kernel.org,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] RFC: create mailing list "linux-issues"
 focussed on issues/bugs and regressions
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

T24gTW9uLCBNYXIgMjIsIDIwMjEgYXQgMDg6MjU6MTVQTSArMDEwMCwgVGhvcnN0ZW4gTGVlbWh1
aXMgd3JvdGU6Cj4gSSBhZ3JlZSB0byB0aGUgbGFzdCBwb2ludCBhbmQgeWVhaCwgbWF5YmUgcmVn
cmVzc2lvbnMgYXJlIHRoZSBtb3JlCj4gaW1wb3J0YW50IHByb2JsZW0gd2Ugc2hvdWxkIHdvcmsg
b24g4oCTIGF0IGxlYXN0IGZyb20gdGhlIHBlcnNwZWN0aXZlIG9mCj4ga2VybmVsIGRldmVsb3Bt
ZW50LiAgQnV0IGZyb20gdGhlIHVzZXJzIHBlcnNwZWN0aXZlIChhbmQKPiByZXBvcnRpbmctaXNz
dWVzLnJzdCBpcyB3cml0dGVuIGZvciB0aGF0IHBlcnNwZWN0aXZlKSBpdCBmZWVsIGEgYml0Cj4g
dW5zYXRpc2Z5aW5nIHRvIG5vdCBoYXZlIGEgc29sdXRpb24gdG8gcXVlcnkgZm9yIGV4aXN0aW5n
IHJlcG9ydCwKPiByZWdyZXNzaW9ucyBvciBub3QuIEhtbW1tLi4uCgpGaXJzdCBvZiBhbGwsIHRo
YW5rcyBmb3Igd29ya2luZyBvbiByZXBvcnRpbmctaXNzdWVzLnJzdC4gIElmIHdlIGNhbgphY3R1
YWxseSBnZXQgdXNlcnMgdG8gKnJlYWQqIGl0LCBJIHRoaW5rIGl0J3MgZ29pbmcgdG8gc2F2ZSBr
ZXJuZWwKZGV2ZWxvcGVycyBhIGh1Z2UgYW1vdW50IG9mIHRpbWUgYW5kIGZydXN0cmF0aW9uLgoK
SSB3b25kZXIgaWYgaXQgbWlnaHQgYmUgdXNlZnVsIHRvIGhhdmUgYSBmb3JtIHdoaWNoIHVzZXJz
IGNvdWxkIGJlCmVuY291cmFnZWQgdG8gZmlsbCBvdXQgc28gdGhhdCAoYSkgdGhlIGluZm9ybWF0
aW9uIGlzIGF2YWlsYWJsZSBpbiBhCnN0cnVjdHVyZWQgZm9ybWF0IHNvIGl0J3MgZWFzaWVyIGZv
ciBkZXZlbG9wZXJzIHRvIGZpbmQgdGhlIHJlbGV2YW50CmluZm9ybWF0aW9uLCAoYikgc28gaXQg
aXMgZWFzaWVyIGZvciBwcm9ncmFtcyB0byBwYXJzZSwgZm9yIGVhc2llcgpyZXBvcnRpbmcgb3Ig
aW5kZXhpbmcsIGFuZCAoYykgYXMgYSBudWRnZSBzbyB0aGF0IHVzZXJzIHJlbWVtYmVyIHRvCnJl
cG9ydCBjcml0aWNhbCBiaXRzIG9mIGluZm9ybWF0aW9uIHN1Y2ggYXMgdGhlIGhhcmR3YXJlCmNv
bmZpZ3VyYXRpb24sIHRoZSBleGFjdCBrZXJuZWwgdmVyc2lvbiwgd2hpY2ggZGlzdHJpYnV0aW9u
IHVzZXJzcGFjZQp3YXMgaW4gdXNlLCBldGMuCgpUaGVyZSBjb3VsZCBhbHNvIGJlIHNvbWV0aGlu
ZyBpbiB0aGUgdGV4dCBmb3JtIHdoaWNoIHdvdWxkIG1ha2UgaXQKZWFzaWVyIGZvciBsb3JlLmtl
cm5lbC5vcmcgc2VhcmNoZXMgdG8gaWRlbnRpZnkgYnVnIHJlcG9ydHMuICAoZS5nLiwKIkxJTlVY
IEtFUk5FTCBCVUcgUkVQT1JURVIgVEVNUExBVEUiKQoKCQkJCQktIFRlZApfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpLc3VtbWl0LWRpc2N1c3MgbWFpbGlu
ZyBsaXN0CktzdW1taXQtZGlzY3Vzc0BsaXN0cy5saW51eGZvdW5kYXRpb24ub3JnCmh0dHBzOi8v
bGlzdHMubGludXhmb3VuZGF0aW9uLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2tzdW1taXQtZGlzY3Vz
cwo=
