Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id CA0186B923
	for <lists@lfdr.de>; Wed, 17 Jul 2019 11:24:09 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 34D45E24;
	Wed, 17 Jul 2019 09:23:55 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 9549BCB8
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 09:23:52 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from userp2130.oracle.com (userp2130.oracle.com [156.151.31.86])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 03ED663D
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 17 Jul 2019 09:23:51 +0000 (UTC)
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
	by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id
	x6H9JDFp004598; Wed, 17 Jul 2019 09:23:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
	h=date : from : to : cc
	: subject : message-id : references : mime-version : content-type :
	in-reply-to; s=corp-2018-07-02;
	bh=14zv6QR6q0+iwSeJt+oLYm7lAqlGIrG1FKvTCkMfCF0=;
	b=okAT77Gfgp6s9acflJxJzPOqbEiG0Z4D1NGH2pNfm7O2518DmyB4O5uB4AD4UCLKCY2D
	tA5Cz1u0Qg9Vnn9q0ioOj9C9rJ6AnrD4v0AEC3NO2Uy+OWN9uZ1CEsdsnlKQa8WX1bzY
	VwRiZNFEcVtda/Ff/LyVtOEoGoppXR1CuZxVpzPtxxjsJgBU3GgGbgjt4zQK/NwMLeqm
	xXwF3NUqauozvirVvfuJFqaZSduOBVkYqVtq3/6X6dPar+9N6squLIFoTPoTeUuVwiis
	Oqr1PvG/rCEEvqMYOA4ejcoOL33uoNWCupOBkAqrzogd9GED5C69nwCZU9m5yJtFIu9G
	aw== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
	by userp2130.oracle.com with ESMTP id 2tq6qtsjdg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 17 Jul 2019 09:23:22 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
	by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id
	x6H9LMKF146275; Wed, 17 Jul 2019 09:23:21 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
	by aserp3030.oracle.com with ESMTP id 2tq5bcw0fn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Wed, 17 Jul 2019 09:23:21 +0000
Received: from abhmp0020.oracle.com (abhmp0020.oracle.com [141.146.116.26])
	by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x6H9NJFb016247;
	Wed, 17 Jul 2019 09:23:19 GMT
Received: from kadam (/41.57.98.10) by default (Oracle Beehive Gateway v4.0)
	with ESMTP ; Wed, 17 Jul 2019 09:23:18 +0000
Date: Wed, 17 Jul 2019 12:23:13 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Takashi Iwai <tiwai@suse.de>
Message-ID: <20190717092313.GA3111@kadam>
References: <7b73e1b7-cc34-982d-2a9c-acf62b88da16@linuxfoundation.org>
	<20190628205102.GA3131@agluck-desk2.amr.corp.intel.com>
	<alpine.DEB.2.21.1906290802360.1802@nanos.tec.linutronix.de>
	<20190629134329.GA4620@andrea>
	<alpine.DEB.2.21.1906291714150.1802@nanos.tec.linutronix.de>
	<20190630163120.GA13925@chatter.i7.local>
	<20190701072013.GJ3402@hirez.programming.kicks-ass.net>
	<alpine.DEB.2.21.1907010948310.1802@nanos.tec.linutronix.de>
	<s5h5zomp4vh.wl-tiwai@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <s5h5zomp4vh.wl-tiwai@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9320
	signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
	malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
	adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
	engine=8.0.1-1810050000 definitions=main-1907170113
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9320
	signatures=668688
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
	priorityscore=1501 malwarescore=0
	suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
	lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999
	adultscore=0
	classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
	definitions=main-1907170113
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED,
	UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Peter Zijlstra <peterz@infradead.org>,
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

On Mon, Jul 01, 2019 at 09:53:54AM +0200, Takashi Iwai wrote:
> On Mon, 01 Jul 2019 09:49:56 +0200,
> Thomas Gleixner wrote:
> > 
> > On Mon, 1 Jul 2019, Peter Zijlstra wrote:
> > 
> > > On Sun, Jun 30, 2019 at 12:31:20PM -0400, Konstantin Ryabitsev wrote:
> > > > On Sat, Jun 29, 2019 at 05:16:18PM +0200, Thomas Gleixner wrote:
> > > > > > Makes all sense to me.  One question/remark:
> > > > > > 
> > > > > > Documentation/process/submitting-patches.rst says:
> > > > > > 
> > > > > >  "If the patch follows from a mailing list discussion, give a URL to the
> > > > > >   mailing list archive; use the https://lkml.kernel.org/ redirector with
> > > > > >   a ``Message-Id``, to ensure that the links cannot become stale."
> > > > > > 
> > > > > > and it does not mention "lore.kernel.org": does this doc want an update?
> > > > > 
> > > > > Yes. lkml.kernel.org/r was the initial redirector, but lore is the new
> > > > > thing.
> > > > 
> > > > FYI, lkml.kernel.org == lore.kernel.org in all respects. Using
> > > > lore.kernel.org/r/<messageid> will match *any* mailing list archived at
> > > > lore.kernel.org (for the full list, see https://lore.kernel.org/lists.html).
> > > > I prefer people use lore.kernel.org because that name doesn't imply that the
> > > > search will only match LKML.
> > > 
> > > I much prefer https://lkml.kernel.org/r/$msgid over lore, because I can
> > > change it to marc.info with a single character change. And while lore
> > > has improved, the thing is still a horrible horrible ugly site (an
> > > actual fixed frame for the thread overview, and hiding that 'Reply
> > > instructions' and 'LKML Archive on lore.kernel.org' somewhow would
> > > already be a big improvement).
> > 
> > But lore allows to reference all mailinglists which are archived
> > there, while lkml.k.org is hardcoded to lkml.
> > 
> > > Also, strlen("lkml.kernel.org/r/") < strlen("lore.kernel.org/lkml/").
> > 
> > Come on ....
> 
> If the size matters, how about just putting the message id?
> Something like:
>   Link: <alpine.DEB.2.21.1907010948310.1802@nanos.tec.linutronix.de>

We could add an option to `git am` to save the Message-ID automatically.

regards,
dan carpenter

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
