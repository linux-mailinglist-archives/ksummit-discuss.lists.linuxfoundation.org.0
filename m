Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA8762827
	for <lists@lfdr.de>; Mon,  8 Jul 2019 20:15:00 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C62302A3A;
	Mon,  8 Jul 2019 18:14:06 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C5F10295A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 18:08:15 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 88523880
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon,  8 Jul 2019 18:08:15 +0000 (UTC)
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0A69321852;
	Mon,  8 Jul 2019 18:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1562609295;
	bh=L0GrvshmuSJV0SB7TvKoCTjg+mHMh5ZvtcyX7qYIXdI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gLSz7SJXTnuoTB6AjWH34YMeOdXKwB9jr8LY5zgj3K8+ICt6V8GzqpdlGB/fNOX+w
	jmtSy76b8ZnUT+qY2e3VlPhcNVawQGj6BT+9wrN9+VJrjpWDRukoFfhaSj1qJSOaAp
	CzhDLrQ0fQvKanj4CXPyr/LmPMQV0xQTgRhXXDRQ=
Date: Mon, 8 Jul 2019 14:08:13 -0400
From: Sasha Levin <sashal@kernel.org>
To: Greg KH <greg@kroah.com>
Message-ID: <20190708180813.GQ10104@sasha-vm>
References: <20190703013557.GQ11506@sasha-vm>
	<20190705164142.GC20625@sirena.org.uk>
	<20190705201231.GI10104@sasha-vm>
	<20190706003214.GE20625@sirena.org.uk>
	<20190708110208.GN10104@sasha-vm>
	<20190708123733.GC8576@sirena.org.uk>
	<102219fd-4ba0-e1ff-b2e3-9a0a43392c4c@roeck-us.net>
	<s5h7e8swq87.wl-tiwai@suse.de> <20190708151040.GB1548@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190708151040.GB1548@kroah.com>
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

On Mon, Jul 08, 2019 at 05:10:40PM +0200, Greg KH wrote:
>Well, I think the conversation will go just like it has in the past for
>this issue:
>	"We need to have someone track regressions!"
>	"X said they would do it but they need to be paid, any company
>	willing to sponsor this?"
>	{crickets}
>
>We know we need this, we have at least one talented and capable person
>to do the work, but no company is willing to step up and fund it :(

Maybe I am not clear on the role of the LF here, but why can't we get
the LF to self-fund a regression tracking project for the kernel?

Getting funding for something like this from companies is difficult.
It's hard to sell the value of something like this to managers even
though to us it's obviously *critical* (see the KernelCI case for
example), and even if a certain company secure funding, LF's method of
spinning up projects and trying to get them funded individually just
doesn't work.

--
Thanks,
Sasha
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
