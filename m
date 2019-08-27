Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id BCC429D9BD
	for <lists@lfdr.de>; Tue, 27 Aug 2019 01:02:53 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 32B5A13A2;
	Mon, 26 Aug 2019 23:02:43 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7C1DE86D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 23:02:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E2D0988E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 23:02:39 +0000 (UTC)
Received: from callcc.thunk.org (guestnat-104-133-0-111.corp.google.com
	[104.133.0.111] (may be forged)) (authenticated bits=0)
	(User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x7QN26DC021740
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Mon, 26 Aug 2019 19:02:07 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
	id B65B642049E; Mon, 26 Aug 2019 19:02:06 -0400 (EDT)
Date: Mon, 26 Aug 2019 19:02:06 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Doug Anderson <dianders@chromium.org>
Message-ID: <20190826230206.GC28066@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=WrGcfV-_0taGHB-LMZV8zN8oV3KMy=j09dor+hKRLPSg@mail.gmail.com>
	<CAD=FV=WgbREZd5EiytrEOxQ+GQ33q+ohKqb-T6e3mhFJzWtpXA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,FAKE_REPLY_C,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Mon, Aug 26, 2019 at 02:35:33PM -0700, Doug Anderson wrote:
> * This requires extra tooling that I think nobody will adopt.  People
> today already (accidentally) adopt Change-Id in the non-discardable
> portion.  I think it would be easier to get everyone currently
> removing Change-Id to start including it again than it will be to get
> everyone to change their tools to move it to the discardable portion.

The reason why people Change-Id's exist in commits today is because of
tooling which is distributed as part of Gerrit.  That's why people are
deeply suspicious of any solution that involves Change-Id in the
non-discarded portion --- because the majority of Gerrit servers up
until now are behind corporate firewalls and since Gerrit servers have
robots.txt files, most Change-Id tend to be useless.

If we come up with new tooling which is more useful, people will use
it.  If it's not useful and doesn't makes life easier, people won't.



On Mon, Aug 26, 2019 at 03:06:43PM -0700, Doug Anderson wrote:
> 2. If, as I expect, Change-Id as part of the patch stays NAKed then I
> will modify the tools I use to post upstream (currently patman) to
> encode the Change-Id.  My naive proposal would be:
> 
> Message-Id: ChangeId-YYYY-MMDD-HHMMSS-PatchNum
> 
> If I try this and it works for me then I will post out and suggest
> that any other like-minded people encode Change-Id into Message-Id in
> a similar way.

... and I would expect patches with this would get NACK'ed because
they would be just as useless as Change-Id's are perceived to be
today.  People who are gaming the rules will tend not to looked upon
favorably; the same will apply to their patches.

BTW, the Message-Id you've listed above is not legal, per RFC-5322.  A
msg-id has to look like a e-mail address (left-hand-side@example.com).
So something like this is legal as a message id:

I3268f9036512c4378cde1da37e0612b43ed4d384@linux-review.googlesource.com

... and indeed, that's more useful, because it tells us how to
interpret I3268f9036512c4378cde1da37e0612b43ed4d384 --- it's a
Change-Id assigned by the linux-review.googlesource.com Gerrit server.

In contrast a bare "I3268f9036512c4378cde1da37e0612b43ed4d384" is
going to be presumed to be useless.  And in fact, a Google search for
this ID returns *nothing*.  Yet visiting the link
https://linux-review.googlesource.com/c/1158 actually returns
something useful.   That's why the latter is superior to the former.

In summary,

Not useful: (and will be probably nacked)

Change-Id: I3268f9036512c4378cde1da37e0612b43ed4d384
Message-Id: I3268f9036512c4378cde1da37e0612b43ed4d384

Useful:

Link: https://linux-review.googlesource.com/c/1158
Link: https://lkml.kernel.org/r/20190826204407.17759-1-daniel.lezcano@linaro.org

Not as useful: (people will prefer the Link example above)

Message-Id: 20190826204407.17759-1-daniel.lezcano@linaro.org

						- Ted
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
