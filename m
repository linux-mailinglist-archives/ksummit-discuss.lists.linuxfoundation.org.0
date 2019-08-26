Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 811A39D8FE
	for <lists@lfdr.de>; Tue, 27 Aug 2019 00:20:14 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 0142E14F1;
	Mon, 26 Aug 2019 22:20:00 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EEDE1D4F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 22:19:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from ozlabs.org (ozlabs.org [203.11.71.1])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id D9CA988E
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Mon, 26 Aug 2019 22:19:56 +0000 (UTC)
Received: by ozlabs.org (Postfix, from userid 1003)
	id 46HRJW0Whrz9s7T; Tue, 27 Aug 2019 08:19:55 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ozlabs.org; s=201707;
	t=1566857995; bh=m1uzi8kyB6ar5FjSPQhvzOYCmJ06+cIo2KCNBzLOvVo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=aYsKpohXEvJZonN9avmbkMCiRl6mXxv/LcDyHYd3PnPRzRY6jZBRBSJtMWdtG+MgR
	uhLKKG7Lio6b1Y5DRvGIh5s4UUxwpO+pANZJ35luYTcOtjLJMmU8cgzvUerxqAVWpQ
	66JAJluvfpYB+61XFXQgqF/hoHv4YqtUqkdu5riZKksdXowFP5uvssn+Uy4+2FL6KK
	3T51Z+sla5wAjgpxeI5y2XwjCN4i+SAYvryJNKGk72nxX6pks1mg2wSdgh5q7Ckkxt
	h/NQ3FeQMTv2RJeZoYeqZJp1icLA/f6qp6H0Q3gZx/fmQ0FgP+e9S6bqnHb4UNEA+e
	wMI23AoCoHPiw==
Date: Tue, 27 Aug 2019 08:19:49 +1000
From: Paul Mackerras <paulus@ozlabs.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20190826221949.GC7402@blackberry>
References: <CAD=FV=UPjPpUyFTPjF-Ogzj_6LJLE4PTxMhCoCEDmH1LXSSmpQ@mail.gmail.com>
	<CAHk-=whFbgy4RXG11c_=S7O-248oWmwB_aZOcWzWMVh3w7=RCw@mail.gmail.com>
	<CAOesGMgYisp--bwVK0_cTMqaUM_TaQ-qwhNDceBOsudBPHWR7g@mail.gmail.com>
	<a6e7eedd-857c-bfe0-4a14-f4140d6fc21e@roeck-us.net>
	<CAOesGMgryBghLuTSufjhOUFUFDvL2Jv7qJ3uwaZUwCkMXpEmng@mail.gmail.com>
	<20190823013619.GA8130@mit.edu>
	<CAHk-=wgqemMJqX4SzbK52KicWSiK4_1qUus=q1akkwdEqXOkvQ@mail.gmail.com>
	<CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHk-=whrLfPipY7JHnCiFp7vbnshG1Om7tcesa8vqYwu=F=BkA@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jonathan Nieder <jrn@google.com>, Tomasz Figa <tfiga@chromium.org>,
	Han-Wen Nienhuys <hanwen@google.com>, Theodore Tso <tytso@google.com>,
	David Rientjes <rientjes@google.com>, Dmitry Torokhov <dtor@chromium.org>,
	Dmitry Vyukov <dvyukov@google.com>
Subject: Re: [Ksummit-discuss] Allowing something Change-Id (or something
 like it) in kernel commits
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

On Thu, Aug 22, 2019 at 08:03:51PM -0700, Linus Torvalds wrote:
> On Thu, Aug 22, 2019 at 7:58 PM Linus Torvalds
> <torvalds@linux-foundation.org> wrote:
> >
> > So yes, I'd *much* rather see that "Link" line than try to make a
> > "Change-ID" line be a thing.
> 
> Tangential note: since it looks like "Link:" lines are going to get
> more common in general, maybe somebody with the right tck/tk-fu can
> make a tool like 'gitk' be able to just do the hyperlinking thing (it
> already does it for commit hashes in the commit message, but wouldn't
> it be convenient to do that for web links too and open a browser
> tab?).

I just posted a patch to do that to the git mailing list (see
https://marc.info/?l=git&m=156685770100577&w=2).  I'll commit it after
people have had a chance to comment on the regexp for detecting links
and the choice of web browser command for each platform.

Paul.
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
