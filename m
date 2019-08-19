Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 7909191D88
	for <lists@lfdr.de>; Mon, 19 Aug 2019 09:07:18 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id EF287B4B;
	Mon, 19 Aug 2019 07:06:28 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 75628AF5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Aug 2019 07:06:27 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 375D067F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 19 Aug 2019 07:06:27 +0000 (UTC)
Received: from pobox.suse.cz (prg-ext-pat.suse.com [213.151.95.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2337720874;
	Mon, 19 Aug 2019 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1566198387;
	bh=ITCvE/ZN6y10bybuS75VC0w7dr73j8rNkyFTYFydrCY=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=Dk0fQ2iChruChhrRngKd009kDq+e6NtalZcLmROnF9qGWLFAp3LwrBFyOMXCwZROc
	CBwVi/qxri+ybBtrltQl0l6D91MqM0UR6S0AnZUirzK8u4d2m3mZ4qZDMW5A7UKW8a
	tiEQsCT9wonhEGEr0bxVakci945KwexekmCCbI78=
Date: Mon, 19 Aug 2019 09:06:17 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Jan Kara <jack@suse.cz>
In-Reply-To: <20190819065710.GC20455@quack2.suse.cz>
Message-ID: <nycvar.YFH.7.76.1908190905490.27147@cbobk.fhfr.pm>
References: <20190706142738.GA6893@kunai>
	<CAMuHMdUVtz6_3-9_+QLRWt6x7fauvA0K4p77eOcyVWo_oO9g5g@mail.gmail.com>
	<20190708115949.GC1050@kunai> <20190715125800.22a9a979@coco.lan>
	<20190715170045.GB3068@mit.edu>
	<alpine.DEB.2.21.999.1908172131550.15337@utopia.booyaka.com>
	<20190819065710.GC20455@quack2.suse.cz>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>
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

On Mon, 19 Aug 2019, Jan Kara wrote:

> I don't think that 'R:' entry in MAINTAINERS should be really asked for.
> IMO that is unnecessary bureaucracy and discourages review from people
> that are not core developers. Sure the quality of the review may be lower
> than from core developer but still there's some value in it. So I'd really
> leave it at the discretion of the maintainer whether he accepts or just
> ignores Reviewed-by tag.

I totally agree.

Sure, Acked-by: (and other tags) is sometimes over-used by random people 
just to get their name listed in the kernel changelog ... on the other 
hand, restricting this only to "the MAINTAINERS club" is definitely not 
how you invite more relevant reviewers to join and help.

-- 
Jiri Kosina
SUSE Labs

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
