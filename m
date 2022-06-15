Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C2354D0E2
	for <lists@lfdr.de>; Wed, 15 Jun 2022 20:25:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BA23F40B2C;
	Wed, 15 Jun 2022 18:25:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6DJXdo44L8eu; Wed, 15 Jun 2022 18:25:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 2F93340347;
	Wed, 15 Jun 2022 18:25:54 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id BA6DFC002D;
	Wed, 15 Jun 2022 18:25:52 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5846CC002D
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 18:25:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 38837410A3
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 18:25:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a7twWQmoK78Z
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 18:25:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org
 [IPv6:2604:1380:4601:e00::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 06A4640E47
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Wed, 15 Jun 2022 18:25:48 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id C70C8B820BE;
 Wed, 15 Jun 2022 18:25:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AC812C3411C;
 Wed, 15 Jun 2022 18:25:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1655317545;
 bh=k/8LR86VM4hmyBF6zXVF3KCkbpum4C0nZgjpeLn5rDo=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=CFGT1K74PFk8ZcZAR7r/FpbRZ1v8PvQvUYIPFKjw7XyNV45G0fSCxGL2TOXsbFANq
 aBrCeSeD+CQ2j32Lki4p8HCM7t6RcLGGbBz4TQaP6qMq8wiDnRgbESrZP2l8zaRhXb
 S0L6n9UeE+KKxnQxm9g3TMgwDTkxH4/ROS5WJHqS8j5po3usydBSGB38vwrxzbTT3I
 uKWfcYH+UO41p0DCbSL6UXwzZkkUPbI+ZewtgJgC1Zd8svTcP7q3iZ+lEnAbWzQbu9
 YA3PCc+Eb+hNak0oaGTF1pRtRslwqlsCOgEH1v7zf+okbWlJfVtv1EOYB7eoXlupiQ
 ethfXpAIA3t8Q==
Date: Wed, 15 Jun 2022 20:25:41 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: "Paul E. McKenney" <paulmck@kernel.org>
In-Reply-To: <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
Message-ID: <nycvar.YFH.7.76.2206152022550.14340@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.2206150834520.14340@cbobk.fhfr.pm>
 <CACRpkdaYx5uOt8Xi8AY3N2BcQjG7J5ZUwr6yueF_pet1HoOrFQ@mail.gmail.com>
 <nycvar.YFH.7.76.2206151023250.14340@cbobk.fhfr.pm>
 <20220615170407.ycbkgw5rofidkh7x@quack3.lan> <87h74lvnyf.fsf@meer.lwn.net>
 <20220615174601.GX1790663@paulmck-ThinkPad-P17-Gen-1>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Bartosz Golaszewski <brgl@bgdev.pl>, Luca Weiss <luca@z3ntu.xyz>,
 Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 Christoph Hellwig <hch@lst.de>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] How far to go with eBPF
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Wed, 15 Jun 2022, Paul E. McKenney wrote:

> > Relevant to this whole thing, I think, is the multigenerational LRU
> > discussion at LSFMM: https://lwn.net/Articles/894859/
> > 
> > One aspect that was only dropped in as a response to a question is that
> > the plan is to add a BPF hook to manage the movement of pages between
> > LRU generations; this will be done because nobody really knows how to
> > come up with an optimal solution to that problem for the general case.
> > That's about as core as it gets and, if users are tweaking memory
> > management with BPF, that will surely achieve ABI status in short order.
> > 
> > Beyond that, though, is the temptation to say "we don't have to figure
> > out this hard problem, we'll just add a BPF hook and let the users find
> > a solution for themselves".  The line between providing a useful means
> > for expert users to optimize their systems and skipping out on our own
> > duty to optimize things is not always clear, at least to me.
> 
> I might as well ask the naive question:  Should subsystems document
> which hooks they intend to treat as ABI?  ;-)

Unfortunately, this "just select a subset" aproach has been proven not to 
work with tracepoints (which is exactly why some subsytems systematically 
refused to add tracepoints in the first place, because they explicitly did 
want to avoid being constrained by tracepoints having to be stable), which 
in this particular aspect is a similar problem.

-- 
Jiri Kosina
SUSE Labs

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
