Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id DB76AA2D39
	for <lists@lfdr.de>; Fri, 30 Aug 2019 05:18:54 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 81F4E5A61;
	Fri, 30 Aug 2019 03:18:33 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 2E82154AD
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 03:17:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id AABC2F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 30 Aug 2019 03:17:23 +0000 (UTC)
Received: from callcc.thunk.org (guestnat-104-133-0-111.corp.google.com
	[104.133.0.111] (may be forged)) (authenticated bits=0)
	(User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x7U3HLU1024969
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Thu, 29 Aug 2019 23:17:22 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
	id 1217D42049E; Thu, 29 Aug 2019 23:17:21 -0400 (EDT)
Date: Thu, 29 Aug 2019 23:17:20 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: ksummit-discuss@lists.linuxfoundation.org
Message-ID: <20190830031720.GA7490@mit.edu>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Subject: [Ksummit-discuss] Topics for the Maintainer's Summit
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

The following topics have been proposed for the maintainer's summit on
this list:

* Squashing Bugs!   (Shuah Kahn)
    How do we deal with the high volume of bugs reported (especially
    by automated systems like syzbot)

* Depth of the "pull network"	     (James Bottomley)
    Should we be encouraging more people to send pull requests
    to maintainers and sub-maintainers (and sub-sub-maintainers),
    versus a more "flat tree" model where people send pull requests
    directly to Linus?

* Stable Kernel Process Automation and Improvement (Sasha Levin)
    What remaining pain points are there?  How can we make it better?

* Talking in Code or talking Code (Shuah Kahn)
    This was a suggestion about a specific LPC proposal; the core
    suggestion was talkinig about our e-mail conversation styles
    on the mailing list.   We have a similar KS track talk:
    "The list is our process: An analysis of the kernel's
    email-based development process"

* Patch version changes in commit logs?   (Shuah Kahn)
    How to make information about how commit has changed while being
    developed.  (A solution which has already been adopted by some
    maintainers is to use the Link: tag in the commit discussion).
    There have been a more recent discussion in this past week under
    subject line "Allowing something Change-Id (or something like it)
    in kernel commits".
    
Some of these topics have already been mostly resolved via e-mail
discussion.  Which topics do people deserves more discussion?

Are there some additional topics that you'd like to suggest that we
discuss at the maintainer's summit?

					- Ted
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
