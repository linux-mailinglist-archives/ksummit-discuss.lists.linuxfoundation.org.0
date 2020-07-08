Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C141A218160
	for <lists@lfdr.de>; Wed,  8 Jul 2020 09:40:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 59C5D86919;
	Wed,  8 Jul 2020 07:40:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y4HARwTQJ49G; Wed,  8 Jul 2020 07:40:25 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id 9E4E3878A1;
	Wed,  8 Jul 2020 07:40:23 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 572B9C016F;
	Wed,  8 Jul 2020 07:40:23 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 986D4C016F;
 Wed,  8 Jul 2020 07:40:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8BD1524AFE;
 Wed,  8 Jul 2020 07:40:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ywZ7n667H3tW; Wed,  8 Jul 2020 07:40:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by silver.osuosl.org (Postfix) with ESMTPS id BCB2F22011;
 Wed,  8 Jul 2020 07:40:18 +0000 (UTC)
IronPort-SDR: htGHz1+Vb7t5didEyVgieRwHL3XqptZjtG3B4rYPnFALqm7Lyjw2IntiYckLWekUKcIi0vJDKL
 xx/v5lyyx+EQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9675"; a="146823623"
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="146823623"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 00:40:16 -0700
IronPort-SDR: 0BNwvH/Nkcgs0L+wvIjDHLaUfWVlMrGWb3i937k60JLdqFlfYD7iVArx7w0LrXDesZQFAcdZPx
 TZSN6NUPHmZA==
X-IronPort-AV: E=Sophos;i="5.75,327,1589266800"; d="scan'208";a="358028162"
Received: from dwillia2-desk3.jf.intel.com (HELO
 dwillia2-desk3.amr.corp.intel.com) ([10.54.39.16])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2020 00:40:15 -0700
From: Dan Williams <dan.j.williams@intel.com>
To: corbet@lwn.net
Date: Wed, 08 Jul 2020 00:23:59 -0700
Message-ID: <159419296487.2464622.863943877093636532.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: StGit/0.18-3-g996c
MIME-Version: 1.0
Cc: ksummit-discuss@lists.linuxfoundation.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 SeongJae Park <sjpark@amazon.de>, linux-kernel@vger.kernel.org,
 tech-board-discuss@lists.linuxfoundation.org, Chris Mason <clm@fb.clm>,
 Dave Airlie <airlied@redhat.com>
Subject: [Ksummit-discuss] [PATCH v2] CodingStyle: Inclusive Terminology
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

Linux maintains a coding-style and its own idiomatic set of terminology.
Update the style guidelines to recommend replacements for the terms
master/slave and blacklist/whitelist.

Link: http://lore.kernel.org/r/159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com
Cc: Jonathan Corbet <corbet@lwn.net>
Acked-by: Randy Dunlap <rdunlap@infradead.org>
Acked-by: Dave Airlie <airlied@redhat.com>
Acked-by: Kees Cook <keescook@chromium.org>
Acked-by: SeongJae Park <sjpark@amazon.de>
Signed-off-by: Olof Johansson <olof@lixom.net>
Signed-off-by: Chris Mason <clm@fb.clm>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Dan Williams <dan.j.williams@intel.com>
---
Changes since v1 [1]
- Drop inclusive-terminology.rst, it is in the lore archives if the
  arguments are needed for future debates, but otherwise no pressing
  need to carry it in the tree (Linus, James)

- Update the recommended terms to include replacement for 'master' and
  'whitelist' (Kees, Andy)

- Add 'target' as a replacement (Andy)

- Add 'device' as a replacement (Mark)

- Collect acks and signed-off-bys. Yes, the sign-offs are not reflective
  of a submission chain, but I kept "Signed-off-by" if people offered
  it.

- Non-change: I did not add explicit language as to what to do with
  existing usages. My personal inclination is to prioritize this
  coding-style cleanup higher than others, but the coding-style document
  has typically not indicated policy on how cleanups are handled by
  subsystems. It will be a case by case effort and consideration.

[1]: http://lore.kernel.org/r/159389297140.2210796.13590142254668787525.stgit@dwillia2-desk3.amr.corp.intel.com

 Documentation/process/coding-style.rst |   13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/Documentation/process/coding-style.rst b/Documentation/process/coding-style.rst
index 2657a55c6f12..a5b61e9005ac 100644
--- a/Documentation/process/coding-style.rst
+++ b/Documentation/process/coding-style.rst
@@ -319,6 +319,19 @@ If you are afraid to mix up your local variable names, you have another
 problem, which is called the function-growth-hormone-imbalance syndrome.
 See chapter 6 (Functions).
 
+For symbol names, avoid introducing new usage of 'master/slave' (or
+'slave' independent of 'master') and 'blacklist/whitelist'. Recommended
+replacements for 'master/slave' are: 'main/{secondary,subordinate}',
+'primary/replica', '{initiator,requester}/{target,responder}',
+'host/{device,proxy}', or 'leader/{performer,follower}'. Recommended
+replacements for 'blacklist/whitelist' are: 'denylist/allowlist' or
+'blocklist/passlist'.
+
+Exceptions for introducing new usage is to maintain a userspace ABI/API,
+or when updating code for an existing (as of 2020) hardware or protocol
+specification that mandates those terms. For new specifications
+translate specification usage of the terminology to the kernel coding
+standard where possible.
 
 5) Typedefs
 -----------

_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
