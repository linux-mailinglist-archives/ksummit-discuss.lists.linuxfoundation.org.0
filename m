Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF4FB9374
	for <lists@lfdr.de>; Fri, 20 Sep 2019 16:54:21 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 99682CC0;
	Fri, 20 Sep 2019 14:54:07 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 94B50CB5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Sep 2019 14:54:05 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
	[213.167.242.64])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3DE1E711
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 20 Sep 2019 14:54:04 +0000 (UTC)
Received: from pendragon.ideasonboard.com
	(dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
	[IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id D30122F9;
	Fri, 20 Sep 2019 16:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1568991242;
	bh=aeKbtj1WZr5fXYl3CkLIe3yYuK2DF/Srh+FznyHSwPI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=tXXOWxRUtZherrwMaz5kUO4PNesBYn8PEgOhccvyxrWEuYN+28z87nvABoX2dW9M0
	F0E2hVpRoqa0Upk8PHSv/DxyesC0ee4wdeYhLcu5yvrNXTXLyzQcRONbS+WHzoOCVU
	CCb7gSwdh2I06uLGg+SjqOlwCV0hFa7QJR+knK6w=
Date: Fri, 20 Sep 2019 17:53:52 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Message-ID: <20190920145352.GI12950@pendragon.ideasonboard.com>
References: <156821693963.2951081.11214256396118531359.stgit@dwillia2-desk3.amr.corp.intel.com>
	<434c05bddd2b364e607e565227487910a8dd9793.1568391461.git.mchehab+samsung@kernel.org>
	<20190918123620.GA6306@pendragon.ideasonboard.com>
	<20190918105728.24e7eb48@coco.lan> <20190919065447.GF2959@kadam>
	<CAMuHMdU10J5zgQ0r8uoA+LFHRbyLB=AG6xygTmsxwc7T-ffdDw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdU10J5zgQ0r8uoA+LFHRbyLB=AG6xygTmsxwc7T-ffdDw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Dan Carpenter <dan.carpenter@oracle.com>,
	Linux Media Mailing List <linux-media@vger.kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH] media: add a subsystem profile
 documentation
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

On Thu, Sep 19, 2019 at 09:22:45AM +0200, Geert Uytterhoeven wrote:
> On Thu, Sep 19, 2019 at 8:57 AM Dan Carpenter <dan.carpenter@oracle.com> wrote:
> > On Wed, Sep 18, 2019 at 10:57:28AM -0300, Mauro Carvalho Chehab wrote:
> > > > > +Patches for the media subsystem should be sent to the media mailing list
> > > > > +at linux-media@vger.kernel.org as plain text only e-mail. Emails with
> > > > > +HTML will be automatically rejected by the mail server. There's no need
> > > > > +to copy the maintainer or sub-maintainer(s).
> > > >
> > > > There's too much traffic on mailing lists for me to follow everything, I
> > > > much prefer being CC'ed on patches.
> > >
> > > Well, by using patchwork, the best is to take a look on it at least for
> > > the patches that you're interested. You could script something using
> > > pwclient in order to make it easier.
> > >
> > > Anyway, not sure if the other sub-maintainers see the same way. From my side,
> > > I prefer not to be c/c, as this is just more noise, as I just rely on
> > > patchwork for media patches. What about changing this to:
> > >
> > >       Patches for the media subsystem should be sent to the media mailing list
> > >       at linux-media@vger.kernel.org as plain text only e-mail. Emails with
> > >       HTML will be automatically rejected by the mail server. It could be wise
> > >       to also copy the sub-maintainer(s).
> >
> > The documentation should say "Use get_maintainer.pl" and do what it
> > says.  Everything else is too complicated.
> 
> +1
> 
> > When I sent a patch, I use get_maintainer.pl then I add whoever the
> > wrote the commit from the Fixes tag.  Then I remove Colin King and Kees
> > Cook from the CC list because they worked all over the tree and I know
> > them.  I also normally remove LKML if there is another mailing list but
> > at least one subsystem uses LKML for patchwork so this isn't safe.
> >
> > So the safest instructions are "Use get_matainer.pl and add the person
> > who wrote the commit in the Fixes tag".
> 
> Better: perhaps get_maintainer.pl can be taught to add the author of the
> commit pointed to by the Fixes tag, if present?

And remove Kees Cook and Colin King ? :-) Jokes aside, brushing up
get_maintainer.pl a bit is a good idea. I'm for instance not sure adding
LKML automatically is a good idea if other mailing lists are already
CC'ed, as it's a bit of a /dev/null (albeit with logging, so CC'ing it
when no other mailing list is appropriate certainly makes sense).

-- 
Regards,

Laurent Pinchart
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
