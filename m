Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D27AD71B
	for <lists@lfdr.de>; Mon,  9 Sep 2019 12:44:38 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id DB2F5F40;
	Mon,  9 Sep 2019 10:44:24 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5E09BF22
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 10:44:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id E990C76F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  9 Sep 2019 10:44:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 50B788EE180; 
	Mon,  9 Sep 2019 03:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
	s=20151216; t=1568025861;
	bh=nSob5CuyPzRyP+WJhjE2CV+562CDoS4ZgRSpSYZsMuE=;
	h=Subject:From:To:Date:In-Reply-To:References:From;
	b=D34Lbw6JE8R4WJmNCMoJ1gd1+z2M8va3t/M5d/BtDPfzikpSOLCjFbCYgNUgxYixi
	/ixbf/ntgr6zY11jTYYzgz06hli0UpufLtO9hQYxoh6x6dHBBkEPPsYmOHuZn+Vloc
	MuM29XspIvmMgfAUVA12Mx9/eqT843M6NzeY8B9w=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id kpTDXptxcji9; Mon,  9 Sep 2019 03:44:20 -0700 (PDT)
Received: from [192.168.6.117] (unknown [148.69.85.38])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 662188EE105;
	Mon,  9 Sep 2019 03:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
	s=20151216; t=1568025860;
	bh=nSob5CuyPzRyP+WJhjE2CV+562CDoS4ZgRSpSYZsMuE=;
	h=Subject:From:To:Date:In-Reply-To:References:From;
	b=LsLRaeu9elR/jC8+TftHzSJ24PG//7tZ8Jqco055q6qLMggPhnphRrFVwDhfL9Pt6
	e0UpcCsyjKWVqBH0xVWWJPm6TaZVhR56807SYfRn+yLLjCQtMIyeg/O6c+mAu1U+T2
	gbzU6DHzPurAfU+OpJnYHyuH6oaWLO5wgSWN92CQ=
Message-ID: <1568025855.6613.5.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Dave Airlie <airlied@gmail.com>, ksummit
	<ksummit-discuss@lists.linuxfoundation.org>
Date: Mon, 09 Sep 2019 11:44:15 +0100
In-Reply-To: <CAPM=9tx7toB7Bsif6RDo51HNxcGbbHDPHD7DjmF9i+zs-J0HRQ@mail.gmail.com>
References: <CAPM=9tx7toB7Bsif6RDo51HNxcGbbHDPHD7DjmF9i+zs-J0HRQ@mail.gmail.com>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: Re: [Ksummit-discuss] vague topic for maintainers summit
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

On Mon, 2019-09-09 at 20:17 +1000, Dave Airlie wrote:
> This topic occured to me on one of the planes I've spent time on this
> weekend, so it's kinda vague and handwavy.
> 
> Methods for constructively saying No to large companies.
> 
> I feel it would be best suited for something like maintainer summit
> as people can speak freely without causing employer issues.
> 
> The idea would be to exchange ideas and discuss how to address large
> bodies of code or stacks that are misdesigned or have major issues
> that aren't suitable for stable inclusion, or are big additions to
> current drivers/layers, being submitted by large corporations with
> the expectations that we would land it because they designed it like
> that. I'm not sure if other maintainers face this sort of thing as
> regularly as I do, but just wondered if there was value in discussing
> it.

Having done this in SCSI for several drivers, there's definitely value
in discussing it, but the usual solution is to get trusted reviewers to
identify the design problem and recommend ways of fixing them.  The
main difficulty we have is getting people to do the reviews ... the
larger the code size the more difficult this is.  For most this all
goes amicably but, for a couple which were really important, I've
actually sometimes rewritten the code base myself (not that this should
ever be recommended or expected practice).

I haven't really found corporations attempting to apply pressure to get
their patches merged as is, although I've heard of others having this
problem.  My usual problem is that the creator of the patch is deeply
wedded to their design and doesn't want to change so it's an individual
rather than a corporate issue.

James

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
