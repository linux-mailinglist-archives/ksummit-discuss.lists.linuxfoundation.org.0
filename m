Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id EBEC56112D
	for <lists@lfdr.de>; Sat,  6 Jul 2019 16:48:51 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id C568F1CA2;
	Sat,  6 Jul 2019 14:48:39 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7EB2B1C99
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 14:42:04 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mslow2.mail.gandi.net (mslow2.mail.gandi.net [217.70.178.242])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 4DBF187B
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 14:42:02 +0000 (UTC)
Received: from relay3-d.mail.gandi.net (unknown [217.70.183.195])
	by mslow2.mail.gandi.net (Postfix) with ESMTP id 974B43A5B89
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat,  6 Jul 2019 14:02:27 +0000 (UTC)
X-Originating-IP: 90.65.161.137
Received: from localhost (lfbn-1-1545-137.w90-65.abo.wanadoo.fr
	[90.65.161.137])
	(Authenticated sender: alexandre.belloni@bootlin.com)
	by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 63C2960002;
	Sat,  6 Jul 2019 14:02:15 +0000 (UTC)
Date: Sat, 6 Jul 2019 16:02:15 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Message-ID: <20190706140215.GD12409@piout.net>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<s5hzhm0q3p1.wl-tiwai@suse.de>
	<alpine.DEB.2.21.1906290906080.1802@nanos.tec.linutronix.de>
	<87y31eov1l.fsf@concordia.ellerman.id.au>
	<1562250136.3187.3.camel@HansenPartnership.com>
	<87zhlt17ue.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zhlt17ue.fsf@concordia.ellerman.id.au>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Spam-Status: No, score=-1.3 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	RCVD_IN_RP_RNBL autolearn=no version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	ksummit-discuss@lists.linuxfoundation.org
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

On 05/07/2019 13:24:57+1000, Michael Ellerman wrote:
> James Bottomley <James.Bottomley@HansenPartnership.com> writes:
> > Cc: tags are another git artefact.  They're how you tell git-send-email 
> > where to send copies of the patch for review or notice, but they don't
> > really provide any intrinsic historical value.
> 
> Right, but it wasn't clear to me if anyone felt that they *do* have
> historical value. Seems not.
> 

Some maintainers do think it is useful:

https://lore.kernel.org/lkml/20171128161014.GG27409@jhogan-linux.mipstec.com/


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
