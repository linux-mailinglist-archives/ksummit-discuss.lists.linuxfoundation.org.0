Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 554B060C16
	for <lists@lfdr.de>; Fri,  5 Jul 2019 22:13:03 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2B5B015C0;
	Fri,  5 Jul 2019 20:12:52 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 604D5158C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 20:12:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 82EF987B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri,  5 Jul 2019 20:12:33 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F047020989;
	Fri,  5 Jul 2019 20:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1562357553;
	bh=Cl+34tsOAmTj7WrhNl7UMB8sq585xYnsiikyNxs4LUo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=onIZuIfrKcj6Zh8rPF6J60kCnOu76uihzuKErtSbXEFq/uO9tMJfyX+qWNXnTPCbg
	KQMIBLXtF33L5jArR5YOxzDNCETADiLW8hwalrjow7Ej2QJpy+jq+vON+SdOjBD44g
	VffL6KF/Iqn4Ki4jDRGB1sbLoWgHZmEtQI8vYJyg=
Date: Fri, 5 Jul 2019 16:12:31 -0400
From: Sasha Levin <sashal@kernel.org>
To: Mark Brown <broonie@kernel.org>
Message-ID: <20190705201231.GI10104@sasha-vm>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705164142.GC20625@sirena.org.uk>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org

On Fri, Jul 05, 2019 at 05:41:42PM +0100, Mark Brown wrote:
>On Tue, Jul 02, 2019 at 09:35:57PM -0400, Sasha Levin wrote:
>
>> - Concerns about how well -stable kernels are tested.
>> - "Fixes for fixes" end up being missed.
>> - Saner AUTOSEL process.
>
>I'm a bit worried about these, especially pushed together - one
>of the things the AUTOSEL stuff does quite often is pull in
>driver changes and our coverage of drivers is especially weak.

Our driver coverage is indeed weak, but I don't think that the solution
is to leave drivers/ alone. On the contrary, I think that making
drivers/ move quickly together with the rest of the kernel will
encourage vendors to up their testing game.

This came up in the last MS, and the agreement there was that we expect
stable kernel users to test their workloads before throwing it into
production.

If we were to start avoiding driver updates, it would act as an
incentive for people not to upgrade their kernel.

Right now I'm working with a certain hardware vendor who does a crappy
job at tagging fixes for stable, and it's horribly painful. I end up
spending time triaging a bug, reporting it to the vendor, only to be
told "oh grab this fix from upstream".

This user experience is just bad, and I can't imagine how difficult it
is for users who are less familiar with the kerenl.

--
Thanks,
Sasha
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
