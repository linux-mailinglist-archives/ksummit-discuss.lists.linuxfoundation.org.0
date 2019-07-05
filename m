Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A09F60791
	for <lists@lfdr.de>; Fri,  5 Jul 2019 16:13:53 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EBD5713F6;
	Fri,  5 Jul 2019 14:13:40 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 63C5D13D3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 14:13:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 93FF4894
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 14:13:37 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id C988EAFED;
	Fri,  5 Jul 2019 14:13:35 +0000 (UTC)
Date: Fri, 05 Jul 2019 16:13:35 +0200
Message-ID: <s5hwogwy3g0.wl-tiwai@suse.de>
From: Takashi Iwai <tiwai@suse.de>
To: Michael Ellerman <mpe@ellerman.id.au>
In-Reply-To: <87lfxc1ta4.fsf@concordia.ellerman.id.au>
References: <20190703013557.GQ11506@sasha-vm>
	<87lfxc1ta4.fsf@concordia.ellerman.id.au>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI/1.14.6 (Maruoka)
	FLIM/1.14.9 (=?UTF-8?B?R29qxY0=?=) APEL/10.8 Emacs/25.3
	(x86_64-suse-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI 1.14.6 - "Maruoka")
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel
	process	automation and improvement
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

On Fri, 05 Jul 2019 15:54:11 +0200,
Michael Ellerman wrote:
> 
> Sasha Levin <sashal@kernel.org> writes:
> > Hi folks,
> >
> > If there is interest, I'd like to go over the (minor) changes that went
> > into the -stable kernel process since last year's MS, the various
> > automations we now have, and how we have addressed some of the pain
> > points that came up last year. I'd also love to hear from folks about
> > the issues they're seeing with the process, and if there's anything we
> > can do to make it better.
> >
> > Some of the concerns that were raised during last year's MS (both in the
> > group session as well as in the hallway track) which we've tried to
> > address are:
> >
> >  - Commits missing because authors did not respond to Greg's "FAILED:"
> >    mails.
> >  - Concerns about how well -stable kernels are tested.
> >  - "Fixes for fixes" end up being missed.
> >  - Saner AUTOSEL process.
> >  - Tracking of dropped commits.
> 
> Yeah definitely interested in this.
> 
> Especially the tracking part. I have been trying to keep track of
> powerpc commits that need backporting, but haven't really come up with a
> good system. So would be interested in what you and/or others are doing.
> 
> Something I've been experimenting with is using git notes to mark
> commits that have been fixed by a subsequent commit. This gives you a
> two way link between the fix and the fixed commit, and you can get the
> notes to show up in git log, like:
> 
>   commit 1846193b178dcc58435fdc57352db7b74826ef37
>   Author: Michael Ellerman <mpe@ellerman.id.au>
>   Date:   Thu Jul 7 22:54:29 2016 +1000
>   
>       powerpc/xmon: Dump ISA 2.06 SPRs
>       
>       Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
>   
>   Notes (fixed):
>       Fixed-by: c47a94031e81 ("powerpc/xmon: Fix display of SPRs")
> 
> 
> I'd like to extend this to the stable trees, so you could have output
> something like:
> 
>   commit 1846193b178dcc58435fdc57352db7b74826ef37
>   Author: Michael Ellerman <mpe@ellerman.id.au>
>   Date:   Thu Jul 7 22:54:29 2016 +1000
>   
>       powerpc/xmon: Dump ISA 2.06 SPRs
>       
>       Signed-off-by: Michael Ellerman <mpe@ellerman.id.au>
>   
>   Notes (fixed):
>       Fixed-by: c47a94031e81 ("powerpc/xmon: Fix display of SPRs")
>         v4.9.y: deadbeef0000 ("powerpc/xmon: Fix display of SPRs")
>        v4.10.y: not found
> 
> 
> Git notes are also just blobs, so in theory the processing to generate
> those notes could be done once and pushed to a repo where everyone could
> pull them.

Yes, I'd love to have (and share) this kind of reverse mapping
information.  But somehow using git-notes for such a purpose wasn't
accepted widely.  IIRC, Linus mentioned that git-notes is a hack, and
indeed it is.  But if the entries aren't too big, it would work well
enough, I guess.  Once when the size matters, we can reconsider to
switch to a better infrastructure...

FWIW, SUSE tracks the possible upstream fixes by parsing Fixes tag
regularly, so it's proven to be useful.


thanks,

Takashi
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
