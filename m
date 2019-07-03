Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id CD432733FE
	for <lists@lfdr.de>; Wed, 24 Jul 2019 18:35:42 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 2C9D2EA4;
	Wed, 24 Jul 2019 16:35:26 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 5A888E42
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 23:52:04 +0000 (UTC)
X-Greylist: delayed 00:08:11 by SQLgrey-1.7.6
Received: from mta02.hs-regensburg.de (mta02.hs-regensburg.de [194.95.104.12])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 6A34B70D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed,  3 Jul 2019 23:52:03 +0000 (UTC)
Received: from E16S02.hs-regensburg.de (e16s02.hs-regensburg.de
	[IPv6:2001:638:a01:8013::92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(Client CN "E16S02", Issuer "E16S02" (not verified))
	by mta02.hs-regensburg.de (Postfix) with ESMTPS id 45fHkF5T3Mzy6m;
	Thu,  4 Jul 2019 01:43:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oth-regensburg.de;
	s=mta01-20160622; t=1562197429;
	bh=jbbOhmHNPx8/urDcBVAAj7yOFbcEEDMuUghi99Ly2QM=;
	h=To:CC:References:From:Subject:Date:In-Reply-To:From;
	b=rcRkL9uDN7Ai5tQ/B9OB5L6FXqJqB4CLWesOQxEOwyWha9DiNpaMnxUZSNy76IobW
	9Fdr6o0+XP9lWr7bF5mmXUE7yKKMQF1fhBudcjRbNZArejLcsl8AfYDuvh5XYT2l4c
	Kb0tZsfZmQnQfjkcoFgg4nesgVVdB/jtjMcwT912TN0dPj7TAncLVDN0Ovtfr0LA3P
	B/p12lcjAStokS2ihHsKLtYWB4Uy+wsjfYeOmsgJ115IpYDwZ7g2+C9UwbXJt0VgUT
	1lWXE9ZN0VwJp7CW4zRDEJfp9ow0tydgawv5TccAv7/jWRJrIOAE5ESD3ln+gjoNSi
	pAd/KA9XZDG5Q==
Received: from [172.16.2.24] (194.95.106.138) by E16S02.hs-regensburg.de
	(2001:638:a01:8013::92) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5;
	Thu, 4 Jul 2019 01:43:49 +0200
To: Thomas Gleixner <tglx@linutronix.de>, Theodore Ts'o <tytso@mit.edu>
References: <1562077203.3321.2.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907021644420.1802@nanos.tec.linutronix.de>
	<1562080257.3321.19.camel@HansenPartnership.com>
	<1562080696.3321.21.camel@HansenPartnership.com>
	<37eb32f3-f341-b1d8-293b-c119ae278b4f@linuxfoundation.org>
	<1562082713.3321.38.camel@HansenPartnership.com>
	<201907020926.FB19EDEBCC@keescook>
	<1562103238.3321.66.camel@HansenPartnership.com>
	<alpine.DEB.2.21.1907030000050.1802@nanos.tec.linutronix.de>
	<1562106408.29304.11.camel@HansenPartnership.com>
	<20190702224347.GJ3032@mit.edu>
	<alpine.DEB.2.21.1907030048350.1802@nanos.tec.linutronix.de>
From: Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>
Openpgp: preference=signencrypt
Autocrypt: addr=ralf.ramsauer@oth-regensburg.de; keydata=
	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
	RncIIYr0LjXAAzY=
Message-ID: <4ff2dc57-380d-f1ed-d66b-4f30abc6011c@oth-regensburg.de>
Date: Thu, 4 Jul 2019 01:43:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1907030048350.1802@nanos.tec.linutronix.de>
Content-Language: en-PH
X-Originating-IP: [194.95.106.138]
X-ClientProxiedBy: E16S03.hs-regensburg.de (2001:638:a01:8013::93) To
	E16S02.hs-regensburg.de (2001:638:a01:8013::92)
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
X-Mailman-Approved-At: Wed, 24 Jul 2019 16:35:23 +0000
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Wolfgang Mauerer <wolfgang.mauerer@oth-regensburg.de>,
	mete.polat@tuta.io, ksummit-discuss@lists.linuxfoundation.org,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Patch version changes in
 commit logs?
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

Hi Thomas,

On 7/3/19 12:49 AM, Thomas Gleixner wrote:
> On Tue, 2 Jul 2019, Theodore Ts'o wrote:
>> On Tue, Jul 02, 2019 at 03:26:48PM -0700, James Bottomley wrote:
>>> git is our upstream for version control and our upstream has already
>>> had this as a feature since 2014.  Trying to go to upstream  5 years
>>> later and ask them to change it is likely going to be a singularly
>>> unsuccessful exercise, plus even in the unlikely event we can work out
>>> how to do it compatibly and without causing confusion and upstream said
>>> yes it would take another few years to propagate.
>>
>> If we really want to use the Link: header, we should be able to do
>> this without requiring any changes to git.
>>
>> Step 1)   git config am.messageid true
>> Step 2)   Write and install a .git/hooks/applypatch-msg script which
>> 	  looks for Message-Id: and transmogrifies that line to a
>> 	  Link: trailer, using the lore.kernel.org URL template
>> Step 3)   Document this in Documentation/process.  For bonus points
>> 	  create a script which automatically sets up the user's git
>> 	  configuration by setting up am.messageid config and
>> 	  installing the hook file.
>> Step 4)   Profit
> 
> Amen.
Unfortunately, Message-IDs aren't unique. People sometimes like to reuse
old Message-IDs, mails may be sent to several lists and are modified by
lists servers (footers, encoding, additional headers). So the Message-ID
per-se isn't a stable indicator which exact message is referenced.

Anyway, in most cases Message-IDs should be good enough for a mapping,
and including Message-IDs in commit messages is a good idea in many regards.

I'm working on PaStA [1], a tool that automatically maps Message-IDs on
lists to commit hashes in repositories with pretty high accuracy. It's
part of a research project at the Technical University of Applied
Sciences Regensburg. For those interested in the method and how it
works, see [2].

Thomas, if you remember, that's the tool that, e.g., quantifies the
upstream effort of the RT project.

Given a commit hash, we're now able to retrieve several revisions of a
patch. This allows you to navigate through all versions of a patch,
including their discussions. In the long run, patchwork integration is
planned -- will keep you up-to-date.

But therefore we optimally need a full coverage of all lists, and lore
only tracks a small subset of 'most important' lists. This is why we
subscribed to all lists mentioned in the MAINTAINERS file and archive
them in the public inbox format [3]. Currently we track ~190 lists.

I'm maintaining this archive (together with its tooling [4]) for the
moment, but I'd be happy if this could be hosted at some LF server.

  Ralf

[1] https://github.com/lfd/PaStA
[2] https://arxiv.org/pdf/1902.03147.pdf
[3] https://github.com/orgs/linux-mailinglist-archives/
[4] https://github.com/lfd/mail-archiver
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
