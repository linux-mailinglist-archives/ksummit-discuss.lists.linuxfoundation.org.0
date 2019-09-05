Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE3FA9782
	for <lists@lfdr.de>; Thu,  5 Sep 2019 02:13:30 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 241A621E6;
	Thu,  5 Sep 2019 00:13:10 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id CB6FB18B3
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 00:12:34 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu [18.9.28.11])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 33867A9
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Thu,  5 Sep 2019 00:12:34 +0000 (UTC)
Received: from callcc.thunk.org (guestnat-104-133-0-96.corp.google.com
	[104.133.0.96] (may be forged)) (authenticated bits=0)
	(User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id x850CUND025281
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Wed, 4 Sep 2019 20:12:32 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
	id 7A3FC42049E; Wed,  4 Sep 2019 20:12:30 -0400 (EDT)
Date: Wed, 4 Sep 2019 20:12:30 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Kees Cook <keescook@chromium.org>
Message-ID: <20190905001230.GB25846@mit.edu>
References: <20190826212548.GA15967@mit.edu>
	<20190828192307.yvf372vnnx7f4iib@wittgenstein>
	<20190830035117.GB5670@mit.edu> <201908292248.12974C32@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201908292248.12974C32@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,MAY_BE_FORGED,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Christian Brauner <christian.brauner@ubuntu.com>,
	ksummit-discuss@lists.linuxfoundation.org
Subject: Re: [Ksummit-discuss] DRAFT Kernel Summit Track schedule
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

On Thu, Aug 29, 2019 at 10:53:54PM -0700, Kees Cook wrote:
> On Thu, Aug 29, 2019 at 11:51:17PM -0400, Theodore Y. Ts'o wrote:
> > On Wed, Aug 28, 2019 at 09:23:08PM +0200, Christian Brauner wrote:
> > > On Mon, Aug 26, 2019 at 05:25:48PM -0400, Theodore Ts'o wrote:
> > > > This is a draft kernel summit track schedule.  Please let me know of
> > > > any potential conflicts or schedule changes that you might like to
> > > > make.
> > > 
> > > Could we grab a slot for
> > > https://lists.linuxfoundation.org/pipermail/ksummit-discuss/2019-July/006699.html
> > > please? It doesn't seem to appear in the list yet.
> > 
> > I hadn't scheduled this because it seemed to be a fairly specialized
> > topic, and one of the major contributors to the thread (Andy
> > Lutomirski) won't be able to be there.  Will we have the right people
> > to have this discussion in Lisbon?
> 
> I agree it would be better to have Andy there, but I don't think that's
> reason enough to not discuss it. We had a rather large BoF meeting at LSS
> about it with a circle of maybe 15-20 people where we made some headway
> on understanding some of the larger requirements, but there was a lot
> left to discuss. I know several people from that discussion will be in
> Lisbon, though I agree it's somewhat specialized. I'm not sure what the
> "interest level" cut-off is for a ksummit slot, but I know I'll need to
> spend time talking with a bunch of people about it in person while I'm
> there, so at least having some "unscheduled" slots for similar kinds of
> discussions would be value.

OK, I've scheduled "Deep Argument Inspection and Seccomp" at 15:45 on
Monday.  Let me know if that slot doesn't work for anyone critical who
needs to participate.

					- Ted
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
