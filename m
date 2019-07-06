Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0E0611CA
	for <lists@lfdr.de>; Sat,  6 Jul 2019 17:05:16 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 044B41CEB;
	Sat,  6 Jul 2019 15:04:57 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EB3041C9C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 14:57:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com
	[66.63.167.143])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 939C387B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 14:57:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id B2A8B8EE20E; 
	Sat,  6 Jul 2019 07:57:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
	s=20151216; t=1562425037;
	bh=p7Jrwo7UHqwEm2aUoHTtY/niP64YZbeDLQEO3rrs6qM=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=rmgOnwwO1vY+TAaCSlEtdK/xyQAI7Z2OlqF4QyM4LjFl1qzu4MaSWHlSubZgdwd3F
	jyHmCU5gKP03F0D72lFoswo33fjJwJO+jaU6Dy/hBGtn51cKvSQn5MncWcNGxRjwnT
	T5Vc0zX+SHA8IXWu0Z7QqtRb0FRQShqXAJy6H9Uc=
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id d_xPR9M9jhtA; Sat,  6 Jul 2019 07:57:17 -0700 (PDT)
Received: from jarvis.lan (unknown [50.35.68.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id E3EFE8EE0D4;
	Sat,  6 Jul 2019 07:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=hansenpartnership.com;
	s=20151216; t=1562425037;
	bh=p7Jrwo7UHqwEm2aUoHTtY/niP64YZbeDLQEO3rrs6qM=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=rmgOnwwO1vY+TAaCSlEtdK/xyQAI7Z2OlqF4QyM4LjFl1qzu4MaSWHlSubZgdwd3F
	jyHmCU5gKP03F0D72lFoswo33fjJwJO+jaU6Dy/hBGtn51cKvSQn5MncWcNGxRjwnT
	T5Vc0zX+SHA8IXWu0Z7QqtRb0FRQShqXAJy6H9Uc=
Message-ID: <1562425034.3029.3.camel@HansenPartnership.com>
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Michael Ellerman
	<mpe@ellerman.id.au>
Date: Sat, 06 Jul 2019 07:57:14 -0700
In-Reply-To: <20190706140215.GD12409@piout.net>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
	<alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
	<87y31eov1l.fsf@concordia.ellerman.id.au>
	<1562250136.3187.3.camel@HansenPartnership.com>
	<87zhlt17ue.fsf@concordia.ellerman.id.au>
	<20190706140215.GD12409@piout.net>
X-Mailer: Evolution 3.26.6 
Mime-Version: 1.0
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org
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

On Sat, 2019-07-06 at 16:02 +0200, Alexandre Belloni wrote:
> On 05/07/2019 13:24:57+1000, Michael Ellerman wrote:
> > James Bottomley <James.Bottomley@HansenPartnership.com> writes:
> > > Cc: tags are another git artefact.  They're how you tell git-
> > > send-email 
> > > where to send copies of the patch for review or notice, but they
> > > don't
> > > really provide any intrinsic historical value.
> > 
> > Right, but it wasn't clear to me if anyone felt that they *do* have
> > historical value. Seems not.
> > 
> 
> Some maintainers do think it is useful:
> 
> https://lore.kernel.org/lkml/20171128161014.GG27409@jhogan-linux.mips
> tec.com/

Apart from stable, the only other cc I think is historically useful is
when I'm carrying a patch that impinges on another maintainer's tree
and they were cc'd for an ack which never arrived.  Then the cc in the
changelog tells Linus at least we tried.

James

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
