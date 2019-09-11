Return-Path: <ksummit-discuss-bounces@lists.linuxfoundation.org>
X-Original-To: lists@lfdr.de
Delivered-To: lists@lfdr.de
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org [140.211.169.12])
	by mail.lfdr.de (Postfix) with ESMTPS id 563C4B00C8
	for <lists@lfdr.de>; Wed, 11 Sep 2019 18:03:20 +0200 (CEST)
Received: from mail.linux-foundation.org (localhost [127.0.0.1])
	by mail.linuxfoundation.org (Postfix) with ESMTP id 7B473C03;
	Wed, 11 Sep 2019 16:03:04 +0000 (UTC)
X-Original-To: ksummit-discuss@lists.linuxfoundation.org
Delivered-To: ksummit-discuss@mail.linuxfoundation.org
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id EA38CA7A
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Sep 2019 16:03:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 846758A6
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Wed, 11 Sep 2019 16:03:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Sep 2019 09:03:00 -0700
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="268788464"
Received: from dwillia2-desk3.jf.intel.com (HELO
	dwillia2-desk3.amr.corp.intel.com) ([10.54.39.16])
	by orsmga001-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Sep 2019 09:03:00 -0700
From: Dan Williams <dan.j.williams@intel.com>
To: linux-kernel@vger.kernel.org
Date: Wed, 11 Sep 2019 08:48:42 -0700
Message-ID: <156821692280.2951081.18036584954940423225.stgit@dwillia2-desk3.amr.corp.intel.com>
User-Agent: StGit/0.18-2-gc94f
MIME-Version: 1.0
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	smtp1.linux-foundation.org
Cc: Dave Jiang <dave.jiang@intel.com>,
	ksummit-discuss@lists.linuxfoundation.org, linux-nvdimm@lists.01.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Steve French <stfrench@microsoft.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Dmitry Vyukov <dvyukov@google.com>, "Tobin C. Harding" <me@tobin.cc>
Subject: [Ksummit-discuss] [PATCH v2 0/3] Maintainer Entry Profiles
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

Changes since v1 [1]:
- Simplify the profile to a hopefully non-controversial set of
  attributes that address the most common sources of contributor
  confusion, or maintainer frustration.
- Rename "Subsystem Profile" to "Maintainer Entry Profile". Not every
  entry in MAINTAINERS represents a full subsystem. There may be driver
  local considerations to communicate to a submitter in addition to wider
  subsystem guidelines. 
- Delete the old P: tag in MAINTAINERS rather than convert to a new E:
  tag (Joe Perches).
[1]:  http://lore.kernel.org/r/154225759358.2499188.15268218778137905050.stgit@dwillia2-desk3.amr.corp.intel.com

---

At last years Plumbers Conference I proposed the Maintainer Entry
Profile as a document that a maintainer can provide to set contributor
expectations and provide fodder for a discussion between maintainers
about the merits of different maintainer policies.

For those that did not attend, the goal of the Maintainer Entry Profile,
and the Maintainer Handbook more generally, is to provide a desk
reference for maintainers both new and experienced. The session
introduction was:

    The first rule of kernel maintenance is that there are no hard and
    fast rules. That state of affairs is both a blessing and a curse. It
    has served the community well to be adaptable to the different
    people and different problem spaces that inhabit the kernel
    community. However, that variability also leads to inconsistent
    experiences for contributors, little to no guidance for new
    contributors, and unnecessary stress on current maintainers. There
    are quite a few of people who have been around long enough to make
    enough mistakes that they have gained some hard earned proficiency.
    However if the kernel community expects to keep growing it needs to
    be able both scale the maintainers it has and ramp new ones without
    necessarily let them make a decades worth of mistakes to learn the
    ropes. 

To be clear, the proposed document does not impose or suggest new
rules. Instead it provides an outlet to document the unwritten rules
and policies in effect for each subsystem, and that each subsystem
might decide differently for whatever reason.


---

Dan Williams (3):
      MAINTAINERS: Reclaim the P: tag for Maintainer Entry Profile
      Maintainer Handbook: Maintainer Entry Profile
      libnvdimm, MAINTAINERS: Maintainer Entry Profile


 Documentation/maintainer/index.rst                 |    1 
 .../maintainer/maintainer-entry-profile.rst        |   99 ++++++++++++++++++++
 Documentation/nvdimm/maintainer-entry-profile.rst  |   64 +++++++++++++
 MAINTAINERS                                        |   20 ++--
 4 files changed, 175 insertions(+), 9 deletions(-)
 create mode 100644 Documentation/maintainer/maintainer-entry-profile.rst
 create mode 100644 Documentation/nvdimm/maintainer-entry-profile.rst
_______________________________________________
Ksummit-discuss mailing list
Ksummit-discuss@lists.linuxfoundation.org
https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss
