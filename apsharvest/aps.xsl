<?xml version="1.0" encoding="UTF-8"?>
<!--
This file was generated by Altova MapForce 2011r2

YOU SHOULD NOT MODIFY THIS FILE, BECAUSE IT WILL BE
OVERWRITTEN WHEN YOU RE-RUN CODE GENERATION.

Refer to the Altova MapForce Documentation for further details.
http://www.altova.com/mapforce
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" exclude-result-prefixes="xs fn">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<xsl:for-each select="article">
			<xsl:variable name="var1_doi" as="xs:QName" select="fn:QName('', 'doi')"/>
			<xsl:variable name="var2_meta" as="node()" select="meta"/>
			<xsl:for-each select="$var2_meta/doi/node()[fn:boolean(self::text())]">
				<xsl:variable name="var3_volume" as="xs:QName" select="fn:QName('', 'volume')"/>
				<xsl:variable name="var4_title" as="xs:QName" select="fn:QName('', 'title')"/>
				<xsl:variable name="var5_resultof_create_attribute_with_prefix" as="node()">
					<xsl:attribute name="ind1" select="'7'"/>
				</xsl:variable>
				<xsl:variable name="var6_resultof_create_attribute_with_prefix" as="node()">
					<xsl:attribute name="code" select="'2'"/>
				</xsl:variable>
				<xsl:variable name="var7_resultof_create_attribute_with_prefix" as="node()">
					<xsl:attribute name="code" select="'a'"/>
				</xsl:variable>
				<xsl:variable name="var8_history" as="node()?" select="$var2_meta/history"/>
				<xsl:variable name="var9_authgrp" as="node()+" select="$var2_meta/authgrp"/>
				<xsl:variable name="var78_resultof_create_element_with_prefix" as="node()">
					<collection xmlns="http://www.loc.gov/MARC21/slim">
						<xsl:attribute name="xsi:schemaLocation" namespace="http://www.w3.org/2001/XMLSchema-instance" select="'http://www.loc.gov/MARC21/slim H:/html/aps_annette/marcxml.xsd'"/>
						<record>
							<datafield>
								<xsl:attribute name="tag" namespace="" select="'024'"/>
								<xsl:sequence select="$var5_resultof_create_attribute_with_prefix"/>
								<subfield>
									<xsl:sequence select="($var6_resultof_create_attribute_with_prefix, 'DOI')"/>
								</subfield>
								<subfield>
									<xsl:sequence select="($var7_resultof_create_attribute_with_prefix, fn:string(.))"/>
								</subfield>
							</datafield>
							<xsl:for-each select="$var9_authgrp">
								<xsl:variable name="var14_cur" as="node()" select="."/>
								<xsl:variable name="var13_idx" as="xs:integer" select="position()"/>
								<xsl:for-each select="*:author[fn:namespace-uri() eq '']">
									<xsl:variable name="var11_cur" as="node()" select="."/>
									<xsl:variable name="var12_idx" as="xs:integer" select="position()"/>
									<xsl:for-each select="*:givenname[fn:namespace-uri() eq '']/node()">
										<xsl:variable name="var10_cur" as="node()" select="."/>
										<xsl:if test="fn:boolean(self::text())">
											<xsl:for-each select="$var11_cur/*:surname[fn:namespace-uri() eq ''][(($var13_idx = xs:decimal('1')) and ($var12_idx = xs:decimal('1')))]">
												<datafield>
													<xsl:attribute name="tag" namespace="" select="'100'"/>
													<subfield>
														<xsl:sequence select="($var7_resultof_create_attribute_with_prefix, fn:concat(fn:concat(fn:string($var10_cur), ', '), fn:string(.)))"/>
													</subfield>
													<xsl:for-each select="$var14_cur/*:aff[fn:namespace-uri() eq '']">
														<subfield>
															<xsl:attribute name="code" namespace="" select="'u'"/>
															<xsl:sequence select="fn:string(.)"/>
														</subfield>
													</xsl:for-each>
												</datafield>
											</xsl:for-each>
										</xsl:if>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<datafield>
								<xsl:attribute name="tag" namespace="" select="'245'"/>
								<xsl:for-each select="$var2_meta/*:title[fn:namespace-uri() eq '']/node()[fn:boolean(self::text())]">
									<subfield>
										<xsl:sequence select="($var7_resultof_create_attribute_with_prefix, fn:string(.))"/>
									</subfield>
								</xsl:for-each>
							</datafield>
							<xsl:for-each select="$var8_history/*:published[fn:namespace-uri() eq '']">
								<datafield>
									<xsl:attribute name="tag" namespace="" select="'260'"/>
									<subfield>
										<xsl:attribute name="code" namespace="" select="'c'"/>
										<xsl:sequence select="replace(fn:string(@date), '-.*', '')"/>
									</subfield>
								</datafield>
							</xsl:for-each>
							<xsl:for-each select="$var2_meta/*:numpages[fn:namespace-uri() eq '']">
								<datafield>
									<xsl:attribute name="tag" namespace="" select="'300'"/>
									<xsl:for-each select="node()[fn:boolean(self::text())]">
										<subfield>
											<xsl:sequence select="($var7_resultof_create_attribute_with_prefix, fn:string(.))"/>
										</subfield>
									</xsl:for-each>
								</datafield>
							</xsl:for-each>
							<xsl:for-each select="$var2_meta/*:abstract[fn:namespace-uri() eq '']">
								<datafield>
									<xsl:attribute name="tag" namespace="" select="'520'"/>
									<xsl:for-each select="*:p[fn:namespace-uri() eq '']/node()[fn:boolean(self::text())]">
										<subfield>
											<xsl:sequence select="($var7_resultof_create_attribute_with_prefix, fn:string(.))"/>
										</subfield>
									</xsl:for-each>
								</datafield>
							</xsl:for-each>
							<xsl:for-each select="$var2_meta/*:pacs[fn:namespace-uri() eq '']/*:pacscode[fn:namespace-uri() eq '']">
								<datafield>
									<xsl:attribute name="tag" namespace="" select="'650'"/>
									<xsl:sequence select="$var5_resultof_create_attribute_with_prefix"/>
									<subfield>
										<xsl:sequence select="($var6_resultof_create_attribute_with_prefix, 'PACS')"/>
									</subfield>
									<xsl:for-each select="node()[fn:boolean(self::text())]">
										<subfield>
											<xsl:sequence select="($var7_resultof_create_attribute_with_prefix, fn:string(.))"/>
										</subfield>
									</xsl:for-each>
								</datafield>
							</xsl:for-each>
							<xsl:for-each select="$var9_authgrp">
								<xsl:variable name="var19_cur" as="node()" select="."/>
								<xsl:variable name="var18_idx" as="xs:integer" select="position()"/>
								<xsl:for-each select="*:author[fn:namespace-uri() eq '']">
									<xsl:variable name="var16_cur" as="node()" select="."/>
									<xsl:variable name="var17_idx" as="xs:integer" select="position()"/>
									<xsl:for-each select="*:givenname[fn:namespace-uri() eq '']/node()">
										<xsl:variable name="var15_cur" as="node()" select="."/>
										<xsl:if test="fn:boolean(self::text())">
											<xsl:for-each select="$var16_cur/*:surname[fn:namespace-uri() eq ''][fn:not((($var18_idx = xs:decimal('1')) and ($var17_idx = xs:decimal('1'))))]">
												<datafield>
													<xsl:attribute name="tag" namespace="" select="'700'"/>
													<subfield>
														<xsl:sequence select="($var7_resultof_create_attribute_with_prefix, fn:concat(fn:concat(fn:string($var15_cur), ', '), fn:string(.)))"/>
													</subfield>
													<xsl:for-each select="$var19_cur/*:aff[fn:namespace-uri() eq '']">
														<subfield>
															<xsl:attribute name="code" namespace="" select="'u'"/>
															<xsl:sequence select="fn:string(.)"/>
														</subfield>
													</xsl:for-each>
												</datafield>
											</xsl:for-each>
										</xsl:if>
									</xsl:for-each>
								</xsl:for-each>
							</xsl:for-each>
							<datafield>
								<xsl:attribute name="tag" namespace="" select="'773'"/>
								<xsl:for-each select="$var2_meta/*:eid[fn:namespace-uri() eq '']">
									<subfield>
										<xsl:attribute name="code" namespace="" select="'c'"/>
										<xsl:sequence select="fn:string(.)"/>
									</subfield>
								</xsl:for-each>
								<subfield>
									<xsl:attribute name="code" namespace="" select="'n'"/>
									<xsl:sequence select="fn:string($var2_meta/*:issue[fn:namespace-uri() eq ''])"/>
								</subfield>
								<xsl:for-each select="$var2_meta/*:journal[fn:namespace-uri() eq '']/node()[fn:boolean(self::text())]">
									<subfield>
										<xsl:attribute name="code" namespace="" select="'p'"/>
										<xsl:sequence select="fn:string(.)"/>
									</subfield>
								</xsl:for-each>
								<subfield>
									<xsl:attribute name="code" namespace="" select="'v'"/>
									<xsl:sequence select="fn:string($var2_meta/*:volume[fn:namespace-uri() eq ''])"/>
								</subfield>
								<xsl:for-each select="$var8_history/*:published[fn:namespace-uri() eq '']">
									<subfield>
										<xsl:attribute name="code" namespace="" select="'y'"/>
										<xsl:sequence select="replace(fn:string(@date), '-.*', '')"/>
									</subfield>
								</xsl:for-each>
							</datafield>
							<xsl:for-each select="$var2_meta/*:references[fn:namespace-uri() eq '']/*:citation[fn:namespace-uri() eq '']">
								<xsl:variable name="var77_cur" as="node()" select="."/>
								<xsl:for-each select="*:ref[fn:namespace-uri() eq '']">
									<xsl:variable name="var20_" as="xs:string" select="', '"/>
									<xsl:variable name="var21_book" as="node()?" select="*:book[fn:namespace-uri() eq '']"/>
									<xsl:variable name="var22_jcite" as="node()?" select="*:jcite[fn:namespace-uri() eq '']"/>
									<xsl:variable name="var23_id" as="node()?" select="$var77_cur/@id"/>
									<xsl:variable name="var24_result" as="xs:boolean?">
										<xsl:for-each select="$var22_jcite">
											<xsl:sequence select="fn:exists(*:date[fn:namespace-uri() eq ''])"/>
										</xsl:for-each>
									</xsl:variable>
									<xsl:variable name="var25_resultof_any" as="xs:boolean" select="fn:exists($var24_result[.])"/>
									<xsl:variable name="var26_result" as="xs:boolean?">
										<xsl:for-each select="$var22_jcite">
											<xsl:sequence select="fn:exists(*:title[fn:namespace-uri() eq ''])"/>
										</xsl:for-each>
									</xsl:variable>
									<xsl:variable name="var27_resultof_any" as="xs:boolean" select="fn:exists($var26_result[.])"/>
									<datafield>
										<xsl:attribute name="tag" namespace="" select="'999'"/>
										<xsl:attribute name="ind2" namespace="" select="'5'"/>
										<xsl:attribute name="ind1" namespace="" select="'C'"/>
										<xsl:for-each select="$var22_jcite/*:doi[fn:namespace-uri() eq '']">
											<subfield>
												<xsl:sequence select="($var7_resultof_create_attribute_with_prefix, fn:string(.))"/>
											</subfield>
										</xsl:for-each>
										<xsl:variable name="var28_result" as="xs:string*">
											<xsl:for-each select="$var22_jcite/*:refauth[fn:namespace-uri() eq '']">
												<xsl:sequence select="fn:string(.)"/>
											</xsl:for-each>
										</xsl:variable>
										<xsl:variable name="var29_result" as="xs:string*">
											<xsl:for-each select="$var21_book/*:refauth[fn:namespace-uri() eq '']">
												<xsl:sequence select="fn:string(.)"/>
											</xsl:for-each>
										</xsl:variable>
										<xsl:if test="fn:not((fn:compare(fn:concat(fn:string-join($var28_result, $var20_), fn:string-join($var29_result, $var20_)), '') = xs:decimal('0')))">
											<subfield>
												<xsl:attribute name="code" namespace="" select="'h'"/>
												<xsl:variable name="var30_result" as="xs:string*">
													<xsl:for-each select="$var22_jcite/*:refauth[fn:namespace-uri() eq '']">
														<xsl:sequence select="fn:string(.)"/>
													</xsl:for-each>
												</xsl:variable>
												<xsl:variable name="var31_result" as="xs:string*">
													<xsl:for-each select="$var21_book/*:refauth[fn:namespace-uri() eq '']">
														<xsl:sequence select="fn:string(.)"/>
													</xsl:for-each>
												</xsl:variable>
												<xsl:sequence select="fn:concat(fn:string-join($var30_result, $var20_), fn:string-join($var31_result, $var20_))"/>
											</subfield>
										</xsl:if>
										<xsl:if test="fn:exists($var23_id)">
											<subfield>
												<xsl:attribute name="code" namespace="" select="'o'"/>
												<xsl:sequence select="replace(fn:string($var23_id), 'c', '')"/>
											</subfield>
										</xsl:if>
										<xsl:for-each select="$var22_jcite">
											<xsl:variable name="var34_cur" as="node()" select="."/>
											<xsl:for-each select="*:jtitle[fn:namespace-uri() eq '']">
												<xsl:variable name="var33_cur" as="node()" select="."/>
												<xsl:for-each select="$var34_cur/*:volume[fn:namespace-uri() eq '']">
													<xsl:variable name="var32_cur" as="node()" select="."/>
													<xsl:for-each select="$var34_cur/*:pages[fn:namespace-uri() eq '']">
														<subfield>
															<xsl:attribute name="code" namespace="" select="'s'"/>
															<xsl:sequence select="fn:concat(fn:concat(fn:concat(fn:concat(fn:string($var33_cur), ','), fn:string($var32_cur)), ','), fn:string(.))"/>
														</subfield>
													</xsl:for-each>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
										<xsl:variable name="var55_result" as="xs:boolean">
											<xsl:choose>
												<xsl:when test="$var27_resultof_any">
													<xsl:variable name="var37_result" as="xs:boolean?">
														<xsl:for-each select="$var22_jcite">
															<xsl:variable name="var36_result" as="xs:boolean*">
																<xsl:for-each select="*:title[fn:namespace-uri() eq '']">
																	<xsl:variable name="var35_result" as="xs:boolean*">
																		<xsl:for-each select="node()">
																			<xsl:sequence select="fn:boolean(self::text())"/>
																		</xsl:for-each>
																	</xsl:variable>
																	<xsl:sequence select="fn:exists($var35_result[.])"/>
																</xsl:for-each>
															</xsl:variable>
															<xsl:sequence select="fn:exists($var36_result[.])"/>
														</xsl:for-each>
													</xsl:variable>
													<xsl:sequence select="fn:exists($var37_result[.])"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:sequence select="fn:true()"/>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:variable>
										<xsl:if test="$var55_result">
											<xsl:variable name="var38_result" as="xs:boolean?">
												<xsl:for-each select="$var21_book">
													<xsl:sequence select="fn:exists(*:booktitle[fn:namespace-uri() eq ''])"/>
												</xsl:for-each>
											</xsl:variable>
											<xsl:variable name="var39_resultof_any" as="xs:boolean" select="fn:exists($var38_result[.])"/>
											<xsl:variable name="var54_result" as="xs:boolean">
												<xsl:choose>
													<xsl:when test="$var39_resultof_any">
														<xsl:variable name="var42_result" as="xs:boolean?">
															<xsl:for-each select="$var21_book">
																<xsl:variable name="var41_result" as="xs:boolean*">
																	<xsl:for-each select="*:booktitle[fn:namespace-uri() eq '']">
																		<xsl:variable name="var40_result" as="xs:boolean*">
																			<xsl:for-each select="node()">
																				<xsl:sequence select="fn:boolean(self::text())"/>
																			</xsl:for-each>
																		</xsl:variable>
																		<xsl:sequence select="fn:exists($var40_result[.])"/>
																	</xsl:for-each>
																</xsl:variable>
																<xsl:sequence select="fn:exists($var41_result[.])"/>
															</xsl:for-each>
														</xsl:variable>
														<xsl:sequence select="fn:exists($var42_result[.])"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:sequence select="fn:true()"/>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:variable>
											<xsl:if test="$var54_result">
												<xsl:variable name="var47_result" as="xs:string">
													<xsl:choose>
														<xsl:when test="$var27_resultof_any">
															<xsl:variable name="var45_result" as="xs:boolean?">
																<xsl:for-each select="$var22_jcite">
																	<xsl:variable name="var44_result" as="xs:boolean*">
																		<xsl:for-each select="*:title[fn:namespace-uri() eq '']">
																			<xsl:variable name="var43_result" as="xs:boolean*">
																				<xsl:for-each select="node()">
																					<xsl:sequence select="fn:boolean(self::text())"/>
																				</xsl:for-each>
																			</xsl:variable>
																			<xsl:sequence select="fn:exists($var43_result[.])"/>
																		</xsl:for-each>
																	</xsl:variable>
																	<xsl:sequence select="fn:exists($var44_result[.])"/>
																</xsl:for-each>
															</xsl:variable>
															<xsl:if test="fn:exists($var45_result[.])">
																<xsl:variable name="var46_result" as="xs:string*">
																	<xsl:for-each select="$var22_jcite/*:title[fn:namespace-uri() eq '']/node()[fn:boolean(self::text())]">
																		<xsl:sequence select="fn:string(.)"/>
																	</xsl:for-each>
																</xsl:variable>
																<xsl:sequence select="xs:string(fn:string-join(for $x in $var46_result return xs:string($x), ' '))"/>
															</xsl:if>
														</xsl:when>
														<xsl:otherwise>
															<xsl:sequence select="''"/>
														</xsl:otherwise>
													</xsl:choose>
												</xsl:variable>
												<xsl:variable name="var52_result" as="xs:string">
													<xsl:choose>
														<xsl:when test="$var39_resultof_any">
															<xsl:variable name="var50_result" as="xs:boolean?">
																<xsl:for-each select="$var21_book">
																	<xsl:variable name="var49_result" as="xs:boolean*">
																		<xsl:for-each select="*:booktitle[fn:namespace-uri() eq '']">
																			<xsl:variable name="var48_result" as="xs:boolean*">
																				<xsl:for-each select="node()">
																					<xsl:sequence select="fn:boolean(self::text())"/>
																				</xsl:for-each>
																			</xsl:variable>
																			<xsl:sequence select="fn:exists($var48_result[.])"/>
																		</xsl:for-each>
																	</xsl:variable>
																	<xsl:sequence select="fn:exists($var49_result[.])"/>
																</xsl:for-each>
															</xsl:variable>
															<xsl:if test="fn:exists($var50_result[.])">
																<xsl:variable name="var51_result" as="xs:string*">
																	<xsl:for-each select="$var21_book/*:booktitle[fn:namespace-uri() eq '']/node()[fn:boolean(self::text())]">
																		<xsl:sequence select="fn:string(.)"/>
																	</xsl:for-each>
																</xsl:variable>
																<xsl:sequence select="xs:string(fn:string-join(for $x in $var51_result return xs:string($x), ' '))"/>
															</xsl:if>
														</xsl:when>
														<xsl:otherwise>
															<xsl:sequence select="''"/>
														</xsl:otherwise>
													</xsl:choose>
												</xsl:variable>
												<xsl:variable name="var53_resultof_concat" as="xs:string" select="fn:concat($var47_result, $var52_result)"/>
												<xsl:if test="fn:not((fn:compare('', $var53_resultof_concat) = xs:decimal('0')))">
													<subfield>
														<xsl:attribute name="code" namespace="" select="'t'"/>
														<xsl:sequence select="$var53_resultof_concat"/>
													</subfield>
												</xsl:if>
											</xsl:if>
										</xsl:if>
										<xsl:variable name="var76_result" as="xs:boolean">
											<xsl:choose>
												<xsl:when test="$var25_resultof_any">
													<xsl:variable name="var58_result" as="xs:boolean?">
														<xsl:for-each select="$var22_jcite">
															<xsl:variable name="var57_result" as="xs:boolean*">
																<xsl:for-each select="*:date[fn:namespace-uri() eq '']">
																	<xsl:variable name="var56_result" as="xs:boolean*">
																		<xsl:for-each select="node()">
																			<xsl:sequence select="fn:boolean(self::text())"/>
																		</xsl:for-each>
																	</xsl:variable>
																	<xsl:sequence select="fn:exists($var56_result[.])"/>
																</xsl:for-each>
															</xsl:variable>
															<xsl:sequence select="fn:exists($var57_result[.])"/>
														</xsl:for-each>
													</xsl:variable>
													<xsl:sequence select="fn:exists($var58_result[.])"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:sequence select="fn:true()"/>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:variable>
										<xsl:if test="$var76_result">
											<xsl:variable name="var59_result" as="xs:boolean?">
												<xsl:for-each select="$var21_book">
													<xsl:sequence select="fn:exists(*:date[fn:namespace-uri() eq ''])"/>
												</xsl:for-each>
											</xsl:variable>
											<xsl:variable name="var60_resultof_any" as="xs:boolean" select="fn:exists($var59_result[.])"/>
											<xsl:variable name="var75_result" as="xs:boolean">
												<xsl:choose>
													<xsl:when test="$var60_resultof_any">
														<xsl:variable name="var63_result" as="xs:boolean?">
															<xsl:for-each select="$var21_book">
																<xsl:variable name="var62_result" as="xs:boolean*">
																	<xsl:for-each select="*:date[fn:namespace-uri() eq '']">
																		<xsl:variable name="var61_result" as="xs:boolean*">
																			<xsl:for-each select="node()">
																				<xsl:sequence select="fn:boolean(self::text())"/>
																			</xsl:for-each>
																		</xsl:variable>
																		<xsl:sequence select="fn:exists($var61_result[.])"/>
																	</xsl:for-each>
																</xsl:variable>
																<xsl:sequence select="fn:exists($var62_result[.])"/>
															</xsl:for-each>
														</xsl:variable>
														<xsl:sequence select="fn:exists($var63_result[.])"/>
													</xsl:when>
													<xsl:otherwise>
														<xsl:sequence select="fn:true()"/>
													</xsl:otherwise>
												</xsl:choose>
											</xsl:variable>
											<xsl:if test="$var75_result">
												<xsl:variable name="var68_result" as="xs:string">
													<xsl:choose>
														<xsl:when test="$var25_resultof_any">
															<xsl:variable name="var66_result" as="xs:boolean?">
																<xsl:for-each select="$var22_jcite">
																	<xsl:variable name="var65_result" as="xs:boolean*">
																		<xsl:for-each select="*:date[fn:namespace-uri() eq '']">
																			<xsl:variable name="var64_result" as="xs:boolean*">
																				<xsl:for-each select="node()">
																					<xsl:sequence select="fn:boolean(self::text())"/>
																				</xsl:for-each>
																			</xsl:variable>
																			<xsl:sequence select="fn:exists($var64_result[.])"/>
																		</xsl:for-each>
																	</xsl:variable>
																	<xsl:sequence select="fn:exists($var65_result[.])"/>
																</xsl:for-each>
															</xsl:variable>
															<xsl:if test="fn:exists($var66_result[.])">
																<xsl:variable name="var67_result" as="xs:string*">
																	<xsl:for-each select="$var22_jcite/*:date[fn:namespace-uri() eq '']/node()[fn:boolean(self::text())]">
																		<xsl:sequence select="fn:string(.)"/>
																	</xsl:for-each>
																</xsl:variable>
																<xsl:sequence select="xs:string(fn:string-join(for $x in $var67_result return xs:string($x), ' '))"/>
															</xsl:if>
														</xsl:when>
														<xsl:otherwise>
															<xsl:sequence select="''"/>
														</xsl:otherwise>
													</xsl:choose>
												</xsl:variable>
												<xsl:variable name="var73_result" as="xs:string">
													<xsl:choose>
														<xsl:when test="$var60_resultof_any">
															<xsl:variable name="var71_result" as="xs:boolean?">
																<xsl:for-each select="$var21_book">
																	<xsl:variable name="var70_result" as="xs:boolean*">
																		<xsl:for-each select="*:date[fn:namespace-uri() eq '']">
																			<xsl:variable name="var69_result" as="xs:boolean*">
																				<xsl:for-each select="node()">
																					<xsl:sequence select="fn:boolean(self::text())"/>
																				</xsl:for-each>
																			</xsl:variable>
																			<xsl:sequence select="fn:exists($var69_result[.])"/>
																		</xsl:for-each>
																	</xsl:variable>
																	<xsl:sequence select="fn:exists($var70_result[.])"/>
																</xsl:for-each>
															</xsl:variable>
															<xsl:if test="fn:exists($var71_result[.])">
																<xsl:variable name="var72_result" as="xs:string*">
																	<xsl:for-each select="$var21_book/*:date[fn:namespace-uri() eq '']/node()[fn:boolean(self::text())]">
																		<xsl:sequence select="fn:string(.)"/>
																	</xsl:for-each>
																</xsl:variable>
																<xsl:sequence select="xs:string(fn:string-join(for $x in $var72_result return xs:string($x), ' '))"/>
															</xsl:if>
														</xsl:when>
														<xsl:otherwise>
															<xsl:sequence select="''"/>
														</xsl:otherwise>
													</xsl:choose>
												</xsl:variable>
												<xsl:variable name="var74_resultof_concat" as="xs:string" select="fn:concat($var68_result, $var73_result)"/>
												<xsl:if test="fn:not((fn:compare('', $var74_resultof_concat) = xs:decimal('0')))">
													<subfield>
														<xsl:attribute name="code" namespace="" select="'y'"/>
														<xsl:sequence select="$var74_resultof_concat"/>
													</subfield>
												</xsl:if>
											</xsl:if>
										</xsl:if>
									</datafield>
								</xsl:for-each>
							</xsl:for-each>
						</record>
					</collection>
				</xsl:variable>
				<xsl:result-document href="{fn:concat(replace(fn:string(.), '[/()]', '_'), '.xml')}" encoding="UTF-8">
					<xsl:sequence select="$var78_resultof_create_element_with_prefix"/>
				</xsl:result-document>
			</xsl:for-each>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>