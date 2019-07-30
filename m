Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 064357AF09
	for <lists@lfdr.de>; Tue, 30 Jul 2019 19:10:59 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 1A4A730EE;
	Tue, 30 Jul 2019 17:10:47 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id DE9FF30CA
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Jul 2019 17:01:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mx1.suse.de (mx2.suse.de [195.135.220.15])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 5B423F1
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Tue, 30 Jul 2019 17:01:17 +0000 (UTC)
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx1.suse.de (Postfix) with ESMTP id 95A5CB030;
	Tue, 30 Jul 2019 17:01:15 +0000 (UTC)
Received: by quack2.suse.cz (Postfix, from userid 1000)
	id 584E81E4370; Tue, 30 Jul 2019 19:01:15 +0200 (CEST)
Date: Tue, 30 Jul 2019 19:01:15 +0200
From: Jan Kara <jack@suse.cz>
To: Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>
Message-ID: <20190730170115.GK28829@quack2.suse.cz>
References: <20190530055947.GA29812@mit.edu>
	<20190724055226.GA15444@jagdpanzerIV>
	<20190724080347.GA12744@jagdpanzerIV>
	<CAOQ4uxhdJDnTiANsC4Cv42A5ooeYaTphtGvZgP9Wvp+LCCh1NA@mail.gmail.com>
	<094f7a8233152e80f34b45982058b599d605864f.camel@kernel.org>
	<20190725050059.GA30226@jagdpanzerIV>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725050059.GA30226@jagdpanzerIV>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: ksummit-discuss@lists.linuxfoundation.org,
	Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>,
	Trond Myklebust <trondmy@gmail.com>
Subject: Re: [Ksummit-discuss] [TECH TOPIC] Linux kernel SMB server (CIFSD)
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

On Thu 25-07-19 14:00:59, Sergey Senozhatsky wrote:
> On (07/24/19 06:55), Jeff Layton wrote:
> > (cc'ing Trond)
> > 
> > Trond has been driving those patches more recently. He posted a revised
> > set of them recently, and they still use fsnotify to detect unlink
> > activity:
> > 
> > https://www.spinics.net/lists/linux-nfs/msg73692.html
> 
> Jan, do you have objections?
> Would be great to have fsnotify export patch in linux-next, maybe.

I have no objections to export bits of fsnotify to modules. After all
kernel/audit_tree.c is another external user of the fsnotify bits, just it
happens not to be modularized so there was never need for exports.

Once NFS guys (or someone else) have something that is close to inclusion,
I can push the export patch to my tree (just CC me, Amir, and fsdevel on the
series). I prefer not to export symbols for something that is out of tree
and will not be getting upstream in a near future. After all the export
patch is easy to carry in your tree if you need it.

								Honza
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
