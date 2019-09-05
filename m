Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 2615BAAE25
	for <lists@lfdr.de>; Thu,  5 Sep 2019 23:58:34 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 8FA891C35;
	Thu,  5 Sep 2019 21:58:20 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 021DE1C00
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 21:58:18 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 05871A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 21:58:17 +0000 (UTC)
Received: from pobox.suse.cz (prg-ext-pat.suse.com [213.151.95.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8E2E2206DE;
	Thu,  5 Sep 2019 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1567720697;
	bh=+lmvLmt1QJU6U9vxbGJDiI6OpIY3f9BDkE58Wzrr/SI=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=cKBxthMk65xREmso/VuJ9G0ytzKtJ2PYtztKx/6gnQPuYAztBJSgHC6nsYCQT+H3U
	jN+Vbk1n/1/DQYHk+XOvWYYNqYRpvE0IaKmcU3/zUC36yrl7bEJWApK92peTCHFmzs
	Boqa2jxgfGfq3DfyE66t6MTm6agOgYFVQHg9G2RI=
Date: Thu, 5 Sep 2019 23:58:00 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
In-Reply-To: <20190905154702.GA21622@mit.edu>
Message-ID: <nycvar.YFH.7.76.1909052354230.31470@cbobk.fhfr.pm>
References: <20190905154702.GA21622@mit.edu>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] DRAFT Maintainer's Summit Agenda and Attendee
 List
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

On Thu, 5 Sep 2019, Theodore Y. Ts'o wrote:

> The agenda topics are of course subject to change (and often do, even
> while we're having the discussion :-).  Any thoughts or comments are
> of course welcome.
> 
> 						- Ted
> 
> 			 Maintainer's Summit
> 	     Ametista Room at the Corinthia Hotel Lisbon
> 			  September 12, 2019
> 
> 
> 9:00  Hot breakfast and morning refreshments (sponsored by IBM)
>       <Room available for hacking and informal discussions>
> 12:00 Lunch (sponsored by Intel)
> 13:00 Agenda Bashing
> 13:30 Dealing with the high volume of automated bug finders (Shuah Kahn)
> 14:00 Stable Kernel Process Automation and Improvement (Sasha Levin)
> 14:30 Depth of the "pull network" (James Bottomley)
> 15:00 Afternoon Break (Sponsored by IBM)
> 15:30 Is Linus Happy?
> 16:30 <Open Slot>

I'd actually like to propose one more topic; last year, we've been 
discussing the process around handling of HW security issues [1]. There 
have been quite some developments since then (and there are still a few 
unresolved companies^Wissues), and I believe it'd be appropriate to give a 
brief update and discuss next steps.

People necessary to discuss this are already on the attendee list, so all 
is good there.

[1] https://lwn.net/Articles/769417/

Thanks,

-- 
Jiri Kosina
SUSE Labs

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
