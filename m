Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E6EAA9BA
	for <lists@lfdr.de>; Thu,  5 Sep 2019 19:08:48 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 32FFB1746;
	Thu,  5 Sep 2019 17:08:34 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 3C233110C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 17:08:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.7.6
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com
	[209.85.166.51])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 596BE8A2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 17:08:31 +0000 (UTC)
Received: by mail-io1-f51.google.com with SMTP id b136so6500002iof.3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu, 05 Sep 2019 10:08:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=labbott.name; s=google;
	h=from:content-transfer-encoding:mime-version:subject:date:references
	:to:in-reply-to:message-id;
	bh=uFRmeqr4ImXzE2YrX6PwPkXowk12+Bgtqx8az+3QeJM=;
	b=s8B3vn/sw0hKicQLnoGbAzczXLHh0zknu3IXAjJWmChdcLzCzignHdddivGx1Fj0kj
	/D4GrVBMuFbyFQBZyafWTs/Eyv7le0hwjZmj0fonm6NGaeWipdWXvSU3DmYle6eE3uHN
	yGs9QNAMEa3/L9uFsg/2jkxTgBmgQBRpR6q54=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=uFRmeqr4ImXzE2YrX6PwPkXowk12+Bgtqx8az+3QeJM=;
	b=PIdyI6NFBhwsi3tOIpAE47eStEOBa+mqWQCrwvx5r7ra6GdMtGQ9UaDtGNxV9pw09W
	X3nXS1gChmNBEQIvCv9wVLcz5gUvHi1KIVAaVlRRLMwA8mmADSCnBMbK8Bf9lir6Y50j
	ztEBC9bubeEfbCGIBNBAcfeKdI/Zu8vqJzCWsgQi/jEdU7JCzA1xQFMBCqZWO/KV0njx
	RhHUfoDm70yxPfXL+B5Xc7Eoh0jsucvs222SaHFlSswvqP0ZxwJf4rlnnAi/uXJbYlg6
	HvSR2mA77mWwCpIdOG84pPJtBX2EYeRK2VLIm/QTTRZoFfDjxNuVMUESnxysX78eTtqI
	VB3A==
X-Gm-Message-State: APjAAAVcZuVSVQvOxt6O95QpUlqMyM2uQCnheB3tO91HUae+0gSKiiAh
	fz9V6R6NcTH/WdbpyuocrKAIqxvsQLjpzQ==
X-Google-Smtp-Source: APXvYqxPNqY25iZOGsF3Yc/WFp8cLpdVc2X/x4i/PAysDfU6fITl8EbcyM6u18QQyy7iblF/G814kA==
X-Received: by 2002:a5e:d90e:: with SMTP id n14mr5279937iop.29.1567703310144; 
	Thu, 05 Sep 2019 10:08:30 -0700 (PDT)
Received: from [172.20.41.33] ([12.116.165.10])
	by smtp.gmail.com with ESMTPSA id
	m67sm4107925iof.21.2019.09.05.10.08.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 05 Sep 2019 10:08:29 -0700 (PDT)
From: Laura Abbott <laura@labbott.name>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Thu, 5 Sep 2019 13:08:23 -0400
References: <0F702CB8-6D0C-4550-9EA7-EE86B4D96073@labbott.name>
To: ksummit-discuss@lists.linuxfoundation.org,
 linux-kernel@vger.kernel.org
In-Reply-To: <0F702CB8-6D0C-4550-9EA7-EE86B4D96073@labbott.name>
Message-Id: <C232C11A-D3FA-476C-8F71-58F675246D37@labbott.name>
X-Mailer: Apple Mail (2.3273)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: Re: [Ksummit-discuss] Linux Foundation Technical Advisory Board
 Elections -- voting procedures
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


> On Sep 3, 2019, at 7:13 AM, Laura Abbott <laura@labbott.name> wrote:
> 
> Hi,
> 
> On behalf of the Linux Foundation Technical Advisory Board (TAB), I'd like to
> take this opportunity to announce the voting procedures for the 2019 TAB
> elections. As was announced[1], this year we are moving to electronic voting.
> 
> Everyone who is registered for kernel summit (co-located with Linux Plumbers
> Conference in Lisbon this year) by September 8th 2019 is eligible to vote in
> this year's TAB elections. This includes everyone registered for Plumbers and
> Maintainers summit. All eligible voters will receive a link from
> Condorcet Internet Voting Service (https://civs.cs.cornell.edu) by the
> start of the first Plumbers session (September 9th 10am UTC+1). The voting
> will run until September 11th at 10am UTC+1.
> 
> The list of all candidates and their platform is available at the following
> Google doc
> 
> https://docs.google.com/document/d/1E3_W1c-xJMx9o2PCnKiGt3vqs-mPh77yNO4GSqNipOQ/edit?usp=sharing
> 
> We will also be hosting an open TAB session at Plumbers on Monday
> September 9th at 18:30. A more detailed FAQ about voting procedures is
> below.
> 
> If you have any questions, feel free to reach out to
> tab@lists.linux-foundation.org .
> 
> Thanks,
> Laura
> 
> P.S. Please consider this a reminder to send in your TAB nominations!
> 
> [1] https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2019-July/006582.html
> 
> ---
> 
> Q: Why are we making this change?
> A: As explained in the previous announcement,
> https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2019-July/006582.html
> In person voting has a number of limitations. We'd like to move to electronic
> voting with the objective of giving more members of our community a voice in
> the membership of the TAB
> 
> Q: Who is eligible to vote?
> A: All registered attendees of Plumbers and Kernel Maintainers Summit are
> eligible.
> 
> Q: If I am registered for Plumbers but not attending can I still vote?
> A: We will be sending the e-mail to all registered attendees before confirming
> they are present.
> 
> Q: Can I register for Plumbers just to vote?
> A: Plumbers is sold out this year.
> 
> Q: Why bother with electronic voting if the voting pool is still conference
> attendees?
> A: The kernel philosophy is small incremental changes. Based on discussions
> with the TAB, changing the voting method and widening the voting pool
> simultaneously was too much for one year. The goal is to run the electronic
> voting this year with the same voting pool and then discuss how voting will
> work in subsequent years.
> 
> Q: When does voting start?
> A: E-mails with the voting link will be sent out before the start of the
> first Plumbers session on Monday September 9th at 10am UTC+1
> 
> Q: When does voting end?
> A: Voting ends on September 11th at 10am UTC+1
> 
> Q: What's the software used for voting?
> A: We will be using the hosted version of the Condorcet Internet Voting Service
> (CIVS) at https://civs.cs.cornell.edu
> 
> Q: Is this code open source?
> A: Yes. The code is available under a BSD-like research license
> 
> Q: How do I vote?
> A: You will receive an e-mail by Monday September 9th at 10am UTC+1 with
> a link to vote.
> 
> Q: Is this method of voting secure?
> A: Privacy and security is a focus of CIVS. See
> https://civs.cs.cornell.edu/sec_priv.html for more information.
> 
> Q: The website mentions ranked choice voting. What is this?
> A: In ranked choice voting, you rank your preferred choices from most
> to least liked. The theory is this results in a more accurate representation
> of what the voter pool wants. This is a different method than we've used
> for TAB elections in the past where you indicated your preferred $n out
> of $m candidates. Because we are using the hosted version of CIVS, we did
> not have the option to use our old method of voting.
> 
> Q: The description mentions an 'election supervisor'. What is this role?
> A: The election supervisor's role is to start and stop the poll, send
> links to voters, and set various options for the poll. A single e-mail
> address is used to e-mail the link to manage the election, after which
> anyone with the link can manage the poll.
> 
> Q: Who is the election supervisor for the TAB elections?
> A: We have created a mailing list for election management. This mailing
> list contains individuals from the kernel community who are not running
> for the TAB this year, similar to in-person proctors from past years.
> We are still working on getting the mailing list set up, the address will
> be announced when it is ready.
> 
> Q: What if I lose the e-mail before I vote?
> A: Please e-mail the election list, address to be announced
> 
> Q: What if I want to change my vote?
> A: This is not possible, please make sure you've made your final choices
> when you click submit.
> 
> Q: What if I want to practice voting?
> A: CIVS has a number of sample polls available. Feel free to vote in those
> to see how the process works.
> 
> Q: What if something unforeseen happens with electronic voting and we don't
> end up with results?
> A: We will arrange an in person vote similar to previous years.
> 
> Q: What if I have questions not addressed here?
> A: E-mail tab@lists.linuxfoundation.org for the current Technical Advisory
> Board or the election list, address to be announced
> 

The mailing list for questions about elections is tab-elections@lists.linuxfoundation.org

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
