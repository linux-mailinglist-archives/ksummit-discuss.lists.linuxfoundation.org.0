Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id BD63D9B333
	for <lists@lfdr.de>; Fri, 23 Aug 2019 17:19:08 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 75E3BFD7;
	Fri, 23 Aug 2019 15:18:53 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id D6365F73
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 15:18:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 587F08A0
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 23 Aug 2019 15:18:51 +0000 (UTC)
Received: from callcc.thunk.org (guestnat-104-133-0-111.corp.google.com
	[104.133.0.111] (may be forged)) (authenticated bits=0)
	(User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x7NFIhFi013015
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Fri, 23 Aug 2019 11:18:44 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
	id 8E1ED42049E; Fri, 23 Aug 2019 11:18:43 -0400 (EDT)
Date: Fri, 23 Aug 2019 11:18:43 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Sean Paul <seanpaul@chromium.org>
Message-ID: <20190823151843.GH8130@mit.edu>
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
	<CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOw6vbJCCeM_62WARKECkthCafhfpxqWc-R9SBMnc6VVMZ0hkg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	Dmitry Torokhov <dtor@chromium.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Vyukov <dvyukov@google.com>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Fri, Aug 23, 2019 at 09:15:30AM -0400, Sean Paul wrote:
> Only if you've uploaded the patch somewhere before sending it to the
> mailing list. I think this would satisfy the Gerrit crowd, since
> they're presumably uploading the patch to Gerrit, getting some review
> on it and then sending it upstream. They will have a link. If you're
> just interested in being archival tool friendly, you probably just
> want to add some uuid cookie to the patch and post it directly to the
> mailing list.

And this is why I think something like one of the two:

Link: https://linux-review.googlesource.com/c/1158
Link: https://linux-review.googlesource.com/q/I3268f9036512c4378cde1da37e0612b43ed4d384

... is a better choice.

The Link tag, unlike the Change-Id: hidden amongst the diffstat,
allows any patch review comments which are made via Gerrit to be
accessible to the public.  The main reason why I suggested the first
as opposed to the second initially is that one of the pushbacks
against the "Change-Id: " header was that the
"I3268f9036512c4378cde1da37e0612b43ed4d384" portion was ugly.

Yes, that's purely an aesthetics argument, but in terms of human
emotional acceptance, that's important.  The first is arguably better
than:

Link: https://bugzilla.kernel.org/show_bug.cgi?id=200847

... which people are already willing to accept.

There are some advantages to the second, in that we don't have to
contact Gerrit to assign the small integer number.  Either way,
though, it should easy to teach Gerrit how to interpret either instead
of the "Change-Id:" tag, and for publically accessible Gerrit
instances, the Link: tag is strictly superior.  It allows you to know
which Gerrit server to contact to find the review history, and it
becomes obvious whether that Gerrit server is publicaly accessible, or
if it is hidden behind a corporate firewall.

Cheers,

					- Ted
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
