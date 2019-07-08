Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 3960561DDD
	for <lists@lfdr.de>; Mon,  8 Jul 2019 13:44:29 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7FDDF245D;
	Mon,  8 Jul 2019 11:44:16 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 247EC245C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 11:35:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D45CA884
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 11:35:22 +0000 (UTC)
Received: from pobox.suse.cz (prg-ext-pat.suse.com [213.151.95.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E72F72064A;
	Mon,  8 Jul 2019 11:35:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1562585722;
	bh=lBEHWqiz7iD6M7W2TZYXML2V9ghnSZf/hJddQxILxac=;
	h=Date:From:To:cc:Subject:In-Reply-To:References:From;
	b=AC8chbTIj6046kxBOeZfcpqv1czCRtf1XCVmyjk8IoDzWgzJrU1V6Aq0KmlQEnb2H
	X0a90rVOWS1RAzA88N5toJReRZOeUb9RBooLIumZq3tZ/Qby0xryNX+OLrSZytKwqw
	9KnZz8bN10nbhBeyKm0eoOZQQoPoCkvjNzNc9QRs=
Date: Mon, 8 Jul 2019 13:35:15 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Sasha Levin <sashal@kernel.org>
In-Reply-To: <20190708110208.GN10104@sasha-vm>
Message-ID: <nycvar.YFH.7.76.1907081329580.5899@cbobk.fhfr.pm>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
X-Spam-Status: No, score=-7.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] stable kernel process
 automation and improvement
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

On Mon, 8 Jul 2019, Sasha Levin wrote:
> 
> >> If we were to start avoiding driver updates, it would act as an
> >> incentive for people not to upgrade their kernel.
> >
> >I'm not sure I follow the logic here?
> 
> The way I see it, the lower your "effective delta" is between to
> kernels, the easier it is to move forward. For example, if I have a
> product that runs on 4.19 and uses all our core kernel code + 10
> drivers, and I know that those drivers had most of the fixes backported
> to my LTS tree, I'd feel much more confident going to 5.4 knowning that
> I already have most of the patches that come with 5.4.
> 
> For me it's a matter of how one would budget a move from a kernel X LTS
> to kernel Y LTS, and I think that as that budget requirement grows it's
> actually harder to actually do it (and convince management), acting as a
> negative incentive to stay with whatever works now.

But where does the 'stable' aspect appear here?

I think it's reasonable to expect 'stable' to mean 'minimal number of 
changes needed to maintain stability of the kernel', and that I believe 
was the original purpose of stable tree.

Now you seem to be repurposing 'stable' as 'as close to upstream as 
possible in order to minimize cost of version updates'.

I guess that's one of the reasons why distros are gradually turning away 
from stable tree the main purpose of distros is to provide stability, 
while it clearly is not minimizing acumulation of cost for future version 
updates.

Thanks,

-- 
Jiri Kosina
SUSE Labs

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
