Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0A569978
	for <lists@lfdr.de>; Mon, 15 Jul 2019 19:01:14 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id A18D3EBC;
	Mon, 15 Jul 2019 17:00:56 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 4380ACAE
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Jul 2019 17:00:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id A93B7898
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 15 Jul 2019 17:00:53 +0000 (UTC)
Received: from callcc.thunk.org (guestnat-104-133-0-99.corp.google.com
	[104.133.0.99] (may be forged)) (authenticated bits=0)
	(User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x6FH0kao027889
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Mon, 15 Jul 2019 13:00:47 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
	id A220F420054; Mon, 15 Jul 2019 13:00:45 -0400 (EDT)
Date: Mon, 15 Jul 2019 13:00:45 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Message-ID: <20190715170045.GB3068@mit.edu>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
	<20190708115949.GC1050@kunai> <20190715125800.22a9a979@coco.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715125800.22a9a979@coco.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Mon, Jul 15, 2019 at 12:58:00PM -0300, Mauro Carvalho Chehab wrote:
> On my case, when I receive an Acked-by, I assume that this came
> from a maintainer (either a subsystem maintainer or a driver
> maintainer) - as I expect that non-maintainers (and reviewers)
> will either send me a reviewed-by or a tested-by.

The problem is that the documentation doesn't exactly match your
expectations:

> When a review a code that will be merged via someone's else tree,
> I usually either give:
> 
> - Acked-by - if it is something that touches the subsystem
>   I maintain and will be merged via some other tree, but I 
>   didn't make a comprehensive review;
> 
> - Reviewed-by - if I did a comprehensive review. I can either
>   be the maintainer or not of the files touched by the patch.
> 
> So, I usually expect the others do about the same.
> 
> Looking at Documentation/process/5.Posting.rst:
> 
> 	 - Acked-by: indicates an agreement by another developer (often a
> 	   maintainer of the relevant code) that the patch is appropriate for
> 	   inclusion into the kernel.
> 
> 	 - Reviewed-by: the named developer has reviewed the patch for correctness;
> 	   see the reviewer's statement in :ref:`Documentation/process/submitting-patches.rst <submittingpatches>`
> 	   for more detail.
> 
> I guess the descriptions are already enough to describe those
> tags.

I'd suggest changing the text to read:

 	 - Acked-by: indicates an agreement by the maintainer or
	   reviewer of the the relevant code that the patch is
	   appropriate for inclusion into the kernel.

My concern is that if we have dozens of "Acked-by" by people who are
not domain experts in any part of the code in the git log, it's just
noise in the system.  Of course, we can't stop people from sending
Acked-by's on the mailing list, but when I recently pointed out that
I'm going to ignore an bare Acked-by by someone who I have no idea
whether or not I can trust the source of that Acked-by, I got yelled
at for not following the documented process.

That complaint isn't going to change how *I* interpret or decide to
include Acked-by's, but if we have general agreement on the
expectations Maintainers should have (and my expectations match
yours), then perhaps we can adjust the documentation to make it more
clear.

					- Ted
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
