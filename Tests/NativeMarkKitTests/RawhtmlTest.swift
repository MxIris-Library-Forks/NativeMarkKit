// This file autogenerated by NativeMarkSpecImport
    
import Foundation
import XCTest
@testable import NativeMarkKit

final class RawhtmlTest: XCTestCase {
    func testCase609() throws {
        // TODO: skipped because markdown is ambiguous for importer
        // Input: <a><bab><c2c>\n
        // HTML: <p><a><bab><c2c></p>\n
        // XCTAssertEqual(try compile("<a><bab><c2c>\n"),
        //                Document(elements: [.paragraph([.link(Link(title: "", url: ""), text: [.text("<bab><c2c>")])])]))
    }

    func testCase610() throws {
        // TODO: skipped because markdown is ambiguous for importer
        // Input: <a/><b2/>\n
        // HTML: <p><a/><b2/></p>\n
        // XCTAssertEqual(try compile("<a/><b2/>\n"),
        //                Document(elements: [.paragraph([.link(Link(title: "", url: ""), text: [.text("<b2/>")])])]))
    }

    func testCase611() throws {
        // TODO: skipped because markdown is ambiguous for importer
        // Input: <a  /><b2\ndata=\"foo\" >\n
        // HTML: <p><a  /><b2\ndata=\"foo\" ></p>\n
        // XCTAssertEqual(try compile("<a  /><b2\ndata=\"foo\" >\n"),
        //                Document(elements: [.paragraph([.link(Link(title: "", url: ""), text: [.text("<b2"), .softbreak, .text("data=“foo” >")])])]))
    }

    func testCase612() throws {
        // TODO: skipped because markdown is ambiguous for importer
        // Input: <a foo=\"bar\" bam = 'baz <em>\"</em>'\n_boolean zoop:33=zoop:33 />\n
        // HTML: <p><a foo=\"bar\" bam = 'baz <em>\"</em>'\n_boolean zoop:33=zoop:33 /></p>\n
        // XCTAssertEqual(try compile("<a foo=\"bar\" bam = 'baz <em>\"</em>'\n_boolean zoop:33=zoop:33 />\n"),
        //                Document(elements: [.paragraph([.text("<a foo=“bar” bam = 'baz "), .emphasis([.text("“")]), .text("'"), .softbreak, .text("_boolean zoop:33=zoop:33 />")])]))
    }

    func testCase613() throws {
        // HTML: <p>Foo <responsive-image src=\"foo.jpg\" /></p>\n
        // Debug: <p>Foo <responsive-image src=\"foo.jpg\" /></p>\n
        XCTAssertEqual(try compile("Foo <responsive-image src=\"foo.jpg\" />\n"),
                       Document(elements: [.paragraph([.text("Foo <responsive-image src=“foo.jpg” />")])]))
    }

    func testCase614() throws {
        // HTML: <p>&lt;33&gt; &lt;__&gt;</p>\n
        // Debug: <p>&lt;33&gt; &lt;__&gt;</p>\n
        XCTAssertEqual(try compile("<33> <__>\n"),
                       Document(elements: [.paragraph([.text("<33> <__>")])]))
    }

    func testCase615() throws {
        // HTML: <p>&lt;a h*#ref=&quot;hi&quot;&gt;</p>\n
        // Debug: <p>&lt;a h*#ref=&quot;hi&quot;&gt;</p>\n
        XCTAssertEqual(try compile("<a h*#ref=\"hi\">\n"),
                       Document(elements: [.paragraph([.text("<a h*#ref=“hi”>")])]))
    }

    func testCase616() throws {
        // HTML: <p>&lt;a href=&quot;hi'&gt; &lt;a href=hi'&gt;</p>\n
        // Debug: <p>&lt;a href=&quot;hi'&gt; &lt;a href=hi'&gt;</p>\n
        XCTAssertEqual(try compile("<a href=\"hi'> <a href=hi'>\n"),
                       Document(elements: [.paragraph([.text("<a href=“hi'> <a href=hi'>")])]))
    }

    func testCase617() throws {
        // TODO: skipped because markdown is ambiguous for importer
        // Input: < a><\nfoo><bar/ >\n<foo bar=baz\nbim!bop />\n
        // HTML: <p>&lt; a&gt;&lt;\nfoo&gt;&lt;bar/ &gt;\n&lt;foo bar=baz\nbim!bop /&gt;</p>\n
        // XCTAssertEqual(try compile("< a><\nfoo><bar/ >\n<foo bar=baz\nbim!bop />\n"),
        //                Document(elements: [.paragraph([.text("< a><"), .softbreak, .text("foo><bar/ >"), .softbreak, .text("<foo bar=baz"), .softbreak, .text("bim!bop />")])]))
    }

    func testCase618() throws {
        // HTML: <p>&lt;a href='bar'title=title&gt;</p>\n
        // Debug: <p>&lt;a href='bar'title=title&gt;</p>\n
        XCTAssertEqual(try compile("<a href='bar'title=title>\n"),
                       Document(elements: [.paragraph([.text("<a href='bar'title=title>")])]))
    }

    func testCase619() throws {
        // TODO: skipped because markdown is ambiguous for importer
        // Input: </a></foo >\n
        // HTML: <p></a></foo ></p>\n
        // XCTAssertEqual(try compile("</a></foo >\n"),
        //                Document(elements: [.paragraph([.text("</foo >")])]))
    }

    func testCase620() throws {
        // HTML: <p>&lt;/a href=&quot;foo&quot;&gt;</p>\n
        // Debug: <p>&lt;/a href=&quot;foo&quot;&gt;</p>\n
        XCTAssertEqual(try compile("</a href=\"foo\">\n"),
                       Document(elements: [.paragraph([.text("</a href=“foo”>")])]))
    }

    func testCase621() throws {
        // HTML: <p>foo <!-- this is a\ncomment - with hyphen --></p>\n
        // Debug: <p>foo <!-- this is a\ncomment - with hyphen --></p>\n
        XCTAssertEqual(try compile("foo <!-- this is a\ncomment - with hyphen -->\n"),
                       Document(elements: [.paragraph([.text("foo <!– this is a"), .softbreak, .text("comment - with hyphen –>")])]))
    }

    func testCase622() throws {
        // HTML: <p>foo &lt;!-- not a comment -- two hyphens --&gt;</p>\n
        // Debug: <p>foo &lt;!-- not a comment -- two hyphens --&gt;</p>\n
        XCTAssertEqual(try compile("foo <!-- not a comment -- two hyphens -->\n"),
                       Document(elements: [.paragraph([.text("foo <!– not a comment – two hyphens –>")])]))
    }

    func testCase623() throws {
        // HTML: <p>foo &lt;!--&gt; foo --&gt;</p>\n<p>foo &lt;!-- foo---&gt;</p>\n
        // Debug: <p>foo &lt;!--&gt; foo --&gt;</p>\n<p>foo &lt;!-- foo---&gt;</p>\n
        XCTAssertEqual(try compile("foo <!--> foo -->\n\nfoo <!-- foo--->\n"),
                       Document(elements: [.paragraph([.text("foo <!–> foo –>")]), .paragraph([.text("foo <!– foo—>")])]))
    }

    func testCase624() throws {
        // HTML: <p>foo <?php echo $a; ?></p>\n
        // Debug: <p>foo <?php echo $a; ?></p>\n
        XCTAssertEqual(try compile("foo <?php echo $a; ?>\n"),
                       Document(elements: [.paragraph([.text("foo <?php echo $a; ?>")])]))
    }

    func testCase625() throws {
        // HTML: <p>foo <!ELEMENT br EMPTY></p>\n
        // Debug: <p>foo <!ELEMENT br EMPTY></p>\n
        XCTAssertEqual(try compile("foo <!ELEMENT br EMPTY>\n"),
                       Document(elements: [.paragraph([.text("foo <!ELEMENT br EMPTY>")])]))
    }

    func testCase626() throws {
        // HTML: <p>foo <![CDATA[>&<]]></p>\n
        // Debug: <p>foo <![CDATA[>&<]]></p>\n
        XCTAssertEqual(try compile("foo <![CDATA[>&<]]>\n"),
                       Document(elements: [.paragraph([.text("foo <![CDATA[>&<]]>")])]))
    }

    func testCase627() throws {
        // TODO: skipped because markdown is ambiguous for importer
        // Input: foo <a href=\"&ouml;\">\n
        // HTML: <p>foo <a href=\"&ouml;\"></p>\n
        // XCTAssertEqual(try compile("foo <a href=\"&ouml;\">\n"),
        //                Document(elements: [.paragraph([.text("foo "), .link(Link(title: "", url: "ö"), text: [])])]))
    }

    func testCase628() throws {
        // TODO: skipped because markdown is ambiguous for importer
        // Input: foo <a href=\"\\*\">\n
        // HTML: <p>foo <a href=\"\\*\"></p>\n
        // XCTAssertEqual(try compile("foo <a href=\"\\*\">\n"),
        //                Document(elements: [.paragraph([.text("foo "), .link(Link(title: "", url: "\\*"), text: [])])]))
    }

    func testCase629() throws {
        // TODO: skipped because markdown is ambiguous for importer
        // Input: <a href=\"\\\"\">\n
        // HTML: <p>&lt;a href=&quot;&quot;&quot;&gt;</p>\n
        // XCTAssertEqual(try compile("<a href=\"\\\"\">\n"),
        //                Document(elements: [.paragraph([.text("<a href=“”“>")])]))
    }

    
}