Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4159C161
	for <lists@lfdr.de>; Sun, 25 Aug 2019 05:12:03 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 76757B49;
	Sun, 25 Aug 2019 03:11:49 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 7C203A7F
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Aug 2019 03:11:46 +0000 (UTC)
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 1866AA7
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun, 25 Aug 2019 03:11:46 +0000 (UTC)
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
	[83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5AA7D214AF;
	Sun, 25 Aug 2019 03:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1566702705;
	bh=mggbsKAmRVAwOJieD2gnS2LXJdVnDf+WnA6bLfp9fhw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=XcapQuTuUT3wyvbJmOWVgh6TFZyqmtW7i8Om15wpJuc01cXa9F4pPCYGXgcls0l7T
	2UPsM4FRkIxrlu09oMZMEEtfKJ4EAvVy2yZkmd8LRDk3L9FkmcRxxxknqNNIO0Wavu
	VZ+TjTUlJ5aYeJVqPfuamauVge0O+enuKZfw0ukY=
Date: Sun, 25 Aug 2019 05:11:43 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Message-ID: <20190825031143.GA2590@kroah.com>
References: <CAOw6vb+1LH8t20S_3kC6xyGZAhrDa3Pe4ZptsJqoQzXf3WCOeg@mail.gmail.com>
	<alpine.DEB.2.21.1908231740020.1896@nanos.tec.linutronix.de>
	<20190823161947.GA112509@dtor-ws>
	<CAJWu+ooOzZ3vFsW40ok8M0MbrZOcx8xJsrN8Ra_VVq0EavzQfQ@mail.gmail.com>
	<20190823164602.GB112509@dtor-ws>
	<alpine.DEB.2.21.1908232108580.1939@nanos.tec.linutronix.de>
	<CAHrFyr6rQHiQAY4Wcv4WzUS2B5tBfrnWvyTjD4ktHvsEBMxkCw@mail.gmail.com>
	<CAD=FV=XGySHprMN+dv6dDKmuTQXnmYg5NStyaOJg+KdNUOFZsQ@mail.gmail.com>
	<CAHk-=whxp0Vm5V6MtaRNC0_ou0=U4-+Y7Ktzq6osU8JgHy_xhQ@mail.gmail.com>
	<20190824230447.GA5163@mit.edu>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="J2SCkAp4GZ/dPZZf"
Content-Disposition: inline
In-Reply-To: <20190824230447.GA5163@mit.edu>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Joel Fernandes <joelaf@google.com>, Barret Rhoden <brho@google.com>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dmitry Torokhov <dtor@chromium.org>, Jonathan Nieder <jrn@google.com>,
	Tomasz Figa <tfiga@chromium.org>, Han-Wen Nienhuys <hanwen@google.com>,
	Theodore Tso <tytso@google.com>, David Rientjes <rientjes@google.com>,
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
Sender: ksummit-discuss-bounces@lists.linuxfoundation.org
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org


--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Aug 24, 2019 at 07:04:47PM -0400, Theodore Y. Ts'o wrote:
> On Sat, Aug 24, 2019 at 11:11:32AM -0700, Linus Torvalds wrote:
> > The first time it gets magically and reliably created for you without
> > you having to do a single thing. The second time, you just look it up.
> 
> Also, if you don't want to look it up, and want to have it generated
> "locally", the Message-Id is generated locally by git send-email.
> (That's right, Message-Id's are just as easy to generate locally as
> UUID's.)  It will look like this:
> 
>      Message-Id: <20190824223355.12947-1-tytso@mit.edu>

I know we are getting "off-topic" here, but as people are sharing
scripts, it turns out that I have been generating my own "message-ids"
for the emails my scripts send out for accepted patches for years with
the attached simple script.

Odds are it was based on a bash script from akpm, but maybe it came from
somewhere else, I've had it around for so long the history of it is
long-lost.

> So if someone wants to make life easier for people who want to send
> out the V2 version of the patch, it would be possible for someone to
> write some tooling which saves the generated Message-Id by git
> send-email (and if you generate the message id and drop it into the
> files generated by git format-patch, git send-email will use the
> generated message id), so that can get used for the git commit
> description for the next version of the commit, this can be done in a
> completely automated way, without having to do any kind of lookups.

When accepting patches from people, my old scripts used to do this
properly and reply to the sent message-id.  Now that I use git, that's
lost, except that I now am generating Link: tags in the commit message
itself, like:
	Link: https://lore.kernel.org/r/20190822213659.5501-1-hsiangkao@aol.com

Hm, I guess I do now keep that info, and I can fix my scripts to
properly thread things, let me go work on that later today...

> As far as I'm concerned, Message-Id's or Link's are both strictly
> superior than a random 16-byte Change-Id UUID.

I totally agree, there's more data in a message-id than a change-id by
far.

Sorry Doug, but this thread turned out kind of like I expected it to,
hopefully you have been convinced better than I did when we spoke in
person :)

thanks,

greg k-h

--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename=make_message_id

#!/usr/bin/perl

# we make a "fake" message id by taking the current number of seconds
# since the beginning of Unix time and tacking on two random numbers to
# the end, in case we are called quicker than 1 second since the last
# time we were called.

use strict;

my $date = `date "+\%s"`;
my $hostname = `hostname -d`;
chomp($date);
chomp($hostname);

my $pseudo_rand;

open FILE, "<:raw", "/dev/urandom" or die "Couldn't open /dev/urandom !";

sysread(FILE, $pseudo_rand, 1);
my $rand1 = ord($pseudo_rand);

sysread(FILE, $pseudo_rand, 1);
my $rand2 = ord($pseudo_rand);

my $message_id = "$date$rand1$rand2\@$hostname";
print "$message_id";

close FILE;

--J2SCkAp4GZ/dPZZf
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss

--J2SCkAp4GZ/dPZZf--
