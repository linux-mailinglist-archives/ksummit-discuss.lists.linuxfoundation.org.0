Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1256F34A389
	for <lists@lfdr.de>; Fri, 26 Mar 2021 09:59:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id E06EE60C08;
	Fri, 26 Mar 2021 08:59:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id e7XslhrO2JZT; Fri, 26 Mar 2021 08:59:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTP id 23125607B0;
	Fri, 26 Mar 2021 08:59:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ED81BC000A;
	Fri, 26 Mar 2021 08:59:19 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DB3C2C000A
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 08:59:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BB2D040458
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 08:59:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=linuxfoundation.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6nM7p3O6jepC
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 08:59:17 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp4.osuosl.org (Postfix) with ESMTPS id F0A8440455
 for <ksummit-discuss@lists.linuxfoundation.org>;
 Fri, 26 Mar 2021 08:59:16 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1D0F661A18;
 Fri, 26 Mar 2021 08:59:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1616749155;
 bh=Wz7SXPw9LmTXAhYYVC9OPNi87BYim1h04zS6vTMMPog=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LUkW9rz8Nj4DAbs3ftL7yYrx2SrU31ILmT0WJ6LMTuhXNOdAP9QlpKomN3MDJuDqM
 3XEsdVGNHn+m4h5Oh8QwSTTyhNwINsBBgMilom04zA/JTnKbEC6MWKOr2zlUgwzO/P
 ew2FETtiTP76TS12FW1G+Z58DsmMw314BXAopwhM=
Date: Fri, 26 Mar 2021 09:59:12 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Thorsten Leemhuis <linux@leemhuis.info>
Message-ID: <YF2iYFEoc56sfeMx@kroah.com>
References: <c396c91f-27c2-de36-7b05-099e03c213f4@leemhuis.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c396c91f-27c2-de36-7b05-099e03c213f4@leemhuis.info>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ksummit <ksummit-discuss@lists.linuxfoundation.org>, linux-doc@vger.kernel.org
Subject: Re: [Ksummit-discuss] FYI & RFC: obsoleting reporting-bugs and
 making reporting-issues official
X-BeenThere: ksummit-discuss@lists.linuxfoundation.org
X-Mailman-Version: 2.1.15
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
Errors-To: ksummit-discuss-bounces@lists.linuxfoundation.org
Sender: "Ksummit-discuss" <ksummit-discuss-bounces@lists.linuxfoundation.org>

On Fri, Mar 26, 2021 at 07:13:09AM +0100, Thorsten Leemhuis wrote:
> 
> Lo! Since a few months mainline in
> Documentation/admin-guide/reporting-issues.rst contains a text written
> to obsolete the good old reporting-bugs text. For now, the new document
> still contains a warning at the top that basically says "this is WIP".
> But I'd like to remove that warning and delete reporting-bugs.rst in the
> next merge window to make reporting-issues.rst fully official. With this
> mail I want to give everyone a chance to take a look at the text and
> speak up if you don't want me to move ahead for now.
> 
> For easier review I'll post the text of reporting-issues.rst in reply to
> this mail. I'll do that in a few chunks, as if this was a cover letter
> for a patch-set. Note, the version I'll send in some areas looks a bit
> different from the one currently in mainline. That's because the text
> I'll send already incorporates a few patches from docs-next that are
> waiting for the next merge window; I also removed the "WIP" box as well
> as two remaining "FIXME" notes, as those point to aspects I mention
> below already.
> 
> @Greg, @Sasha, I'd be especially glad if at least one of you two could
> take a look and yell if there is something you really dislike from the
> perspective of the stable maintainers.

I responded to the specific email, but will again here.  No objection
from me at all, this is a great resource, thanks for doing this.  If,
over time, it needs any tweaks to explain things that people commonly
get wrong, that's easy to do, so don't worry about trying to capture
"everything" right away.

thanks,

greg k-h
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
