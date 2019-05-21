.class Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "GraphReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GraphDataHandler"
.end annotation


# instance fields
.field private mCommandStack:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;

.field private mCurFilterName:Ljava/lang/String;

.field private mInGraph:Z


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;)V
    .locals 1

    .prologue
    .line 659
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mInGraph:Z

    .line 657
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCurFilterName:Ljava/lang/String;

    .line 660
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCommandStack:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;

    .line 661
    return-void
.end method

.method private addConnectCommand(Lorg/xml/sax/Attributes;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 716
    const-string v0, "source"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 717
    if-eqz v0, :cond_1

    .line 718
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 719
    array-length v0, v1

    if-ne v0, v6, :cond_0

    .line 720
    aget-object v0, v1, v4

    .line 721
    aget-object v1, v1, v5

    .line 733
    :goto_0
    const-string v2, "target"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 734
    if-eqz v2, :cond_3

    .line 735
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 736
    array-length v2, v3

    if-ne v2, v6, :cond_2

    .line 737
    aget-object v2, v3, v4

    .line 738
    aget-object v3, v3, v5

    .line 750
    :goto_1
    const-string v4, "sourceSlot"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 751
    const-string v5, "targetSlot"

    invoke-interface {p1, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 752
    if-eqz v4, :cond_7

    .line 753
    const-string v1, "sourceSlot_"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 754
    :goto_2
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCommandStack:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;

    new-instance v6, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddSourceSlotCommand;

    invoke-direct {v6, v0, v4}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddSourceSlotCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->append(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;)V

    .line 756
    const-string v1, "frame"

    move-object v4, v1

    move-object v1, v0

    .line 758
    :goto_3
    if-eqz v5, :cond_6

    .line 759
    const-string v2, "targetSlot_"

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 760
    :goto_4
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCommandStack:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;

    new-instance v3, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddTargetSlotCommand;

    invoke-direct {v3, v0, v5}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddTargetSlotCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->append(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;)V

    .line 762
    const-string v3, "frame"

    .line 764
    :goto_5
    const-string v2, "sourceFilter"

    invoke-static {v2, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->assertValueNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 765
    const-string v2, "sourcePort"

    invoke-static {v2, v4}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->assertValueNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 766
    const-string v2, "targetFilter"

    invoke-static {v2, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->assertValueNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 767
    const-string v2, "targetPort"

    invoke-static {v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->assertValueNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 769
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCommandStack:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;

    new-instance v5, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectCommand;

    invoke-direct {v5, v1, v4, v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->append(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;)V

    .line 773
    return-void

    .line 723
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\'source\' tag needs to have format \"filter:port\"! Alternatively, you may use the form \'sourceFilter=\"filter\" sourcePort=\"port\"\'."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :cond_1
    const-string v0, "sourceFilter"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 730
    const-string v1, "sourcePort"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 740
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "\'target\' tag needs to have format \"filter:port\"! Alternatively, you may use the form \'targetFilter=\"filter\" targetPort=\"port\"\'."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_3
    const-string v2, "targetFilter"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 747
    const-string v3, "targetPort"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 753
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 759
    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    move-object v0, v2

    goto :goto_5

    :cond_7
    move-object v4, v1

    move-object v1, v0

    goto :goto_3
.end method

.method private addFilterInput(Lorg/xml/sax/Attributes;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 815
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCurFilterName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 816
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Found \'input\' element outside of \'filter\' element!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_0
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->getRequiredAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 822
    invoke-static {p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->getAssignmentValue(Lorg/xml/sax/Attributes;)Ljava/lang/Object;

    move-result-object v1

    .line 823
    if-nez v1, :cond_1

    .line 824
    new-instance v1, Lorg/xml/sax/SAXException;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCurFilterName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2d

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "No value specified for input \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' of filter \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 829
    :cond_1
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCommandStack:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;

    new-instance v3, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$SetFilterInputCommand;

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCurFilterName:Ljava/lang/String;

    invoke-direct {v3, v4, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$SetFilterInputCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->append(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;)V

    .line 832
    return-void
.end method

.method private addImportCommand(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 700
    const-string v0, "package"

    invoke-static {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->getRequiredAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCommandStack:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;

    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportPackageCommand;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportPackageCommand;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->append(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;)V

    .line 702
    return-void
.end method

.method private addLibraryCommand(Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 705
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->getRequiredAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 706
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCommandStack:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;

    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddLibraryCommand;

    invoke-direct {v2, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddLibraryCommand;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->append(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;)V

    .line 707
    return-void
.end method

.method private addVarCommand(Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 776
    const-string v0, "name"

    invoke-static {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->getRequiredAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 777
    invoke-static {p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->getAssignmentValue(Lorg/xml/sax/Attributes;)Ljava/lang/Object;

    move-result-object v1

    .line 778
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCommandStack:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;

    new-instance v3, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddVariableCommand;

    invoke-direct {v3, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AddVariableCommand;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->append(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;)V

    .line 779
    return-void
.end method

.method private assertInGraph(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mInGraph:Z

    if-nez v0, :cond_0

    .line 836
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Encountered \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' element outside of \'graph\' element!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 839
    :cond_0
    return-void
.end method

.method private static assertValueNotNull(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 875
    if-nez p1, :cond_0

    .line 876
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Required value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not specified!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 879
    :cond_0
    return-void
.end method

.method private beginFilter(Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 793
    const-string v0, "class"

    invoke-static {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->getRequiredAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 794
    const-string v1, "name"

    invoke-static {p1, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->getRequiredAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCurFilterName:Ljava/lang/String;

    .line 795
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCommandStack:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;

    new-instance v2, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AllocateFilterCommand;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCurFilterName:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$AllocateFilterCommand;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->append(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;)V

    .line 796
    return-void
.end method

.method private beginGraph()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mInGraph:Z

    if-eqz v0, :cond_0

    .line 783
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Found more than one graph element in XML!"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mInGraph:Z

    .line 786
    return-void
.end method

.method private beginMetaFilter(Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 799
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->beginFilter(Lorg/xml/sax/Attributes;)V

    .line 800
    const-string v0, "graphResource"

    invoke-static {p1, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->getRequiredAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 801
    const-string v0, "resourceType"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 802
    if-nez v0, :cond_0

    .line 803
    const-string v0, "raw"

    .line 805
    :cond_0
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCommandStack:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;

    new-instance v3, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCurFilterName:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ConnectResourceSubGraphCommand;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$CommandStack;->postAppend(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Command;)V

    .line 807
    return-void
.end method

.method private endFilter()V
    .locals 1

    .prologue
    .line 810
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mCurFilterName:Ljava/lang/String;

    .line 811
    return-void
.end method

.method private endGraph()V
    .locals 1

    .prologue
    .line 789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->mInGraph:Z

    .line 790
    return-void
.end method

.method private static getAssignmentValue(Lorg/xml/sax/Attributes;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 843
    const-string v0, "stringValue"

    invoke-interface {p0, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 861
    :goto_0
    return-object v0

    .line 845
    :cond_0
    const-string v0, "booleanValue"

    invoke-interface {p0, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 846
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 847
    :cond_1
    const-string v0, "intValue"

    invoke-interface {p0, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 848
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 849
    :cond_2
    const-string v0, "floatValue"

    invoke-interface {p0, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 850
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    .line 851
    :cond_3
    const-string v0, "floatsValue"

    invoke-interface {p0, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 852
    const-string v1, ","

    invoke-static {v0, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 853
    array-length v0, v2

    new-array v1, v0, [F

    .line 854
    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 855
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v1, v0

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 857
    goto :goto_0

    .line 858
    :cond_5
    const-string v0, "varValue"

    invoke-interface {p0, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 859
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Variable;

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$Variable;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 861
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getRequiredAttribute(Lorg/xml/sax/Attributes;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 867
    invoke-interface {p0, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 868
    if-nez v0, :cond_0

    .line 869
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Required attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_0
    return-object v0
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 692
    const-string v0, "graph"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->endGraph()V

    .line 697
    :cond_0
    :goto_0
    return-void

    .line 694
    :cond_1
    const-string v0, "filter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->endFilter()V

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 666
    const-string v0, "graph"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->beginGraph()V

    .line 683
    :goto_0
    return-void

    .line 669
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->assertInGraph(Ljava/lang/String;)V

    .line 670
    const-string v0, "import"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    invoke-direct {p0, p4}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->addImportCommand(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 672
    :cond_1
    const-string v0, "library"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 673
    invoke-direct {p0, p4}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->addLibraryCommand(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 674
    :cond_2
    const-string v0, "connect"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    invoke-direct {p0, p4}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->addConnectCommand(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 676
    :cond_3
    const-string v0, "var"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 677
    invoke-direct {p0, p4}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->addVarCommand(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 678
    :cond_4
    const-string v0, "filter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 679
    invoke-direct {p0, p4}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->beginFilter(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 680
    :cond_5
    const-string v0, "metafilter"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 681
    invoke-direct {p0, p4}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->beginMetaFilter(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 682
    :cond_6
    const-string v0, "input"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 683
    invoke-direct {p0, p4}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$XmlGraphReader$GraphDataHandler;->addFilterInput(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    .line 685
    :cond_7
    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown XML element \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
