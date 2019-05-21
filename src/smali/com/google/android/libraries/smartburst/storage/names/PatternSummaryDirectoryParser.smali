.class final Lcom/google/android/libraries/smartburst/storage/names/PatternSummaryDirectoryParser;
.super Ljava/lang/Object;
.source "PatternSummaryDirectoryParser.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser;


# instance fields
.field private final mFilenameFilter:Ljava/io/FilenameFilter;

.field final mSchema:Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/google/android/libraries/smartburst/storage/names/PatternSummaryDirectoryParser$1;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/smartburst/storage/names/PatternSummaryDirectoryParser$1;-><init>(Lcom/google/android/libraries/smartburst/storage/names/PatternSummaryDirectoryParser;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/storage/names/PatternSummaryDirectoryParser;->mFilenameFilter:Ljava/io/FilenameFilter;

    .line 32
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/storage/names/PatternSummaryDirectoryParser;->mSchema:Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;

    .line 34
    return-void
.end method


# virtual methods
.method public final getSequenceIndexOfFile(Ljava/io/File;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$FieldInvalidException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/storage/names/PatternSummaryDirectoryParser;->mSchema:Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/storage/names/PatternSummaryDirectoryParser;->mSchema:Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;->getSequenceIndex(Ljava/util/regex/Matcher;)I

    move-result v0

    return v0

    .line 52
    :cond_0
    new-instance v0, Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$DidNotMatchException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not parse media file name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$DidNotMatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isBurstFile(Ljava/io/File;)Z
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/storage/names/PatternSummaryDirectoryParser;->mSchema:Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method public final isCover(Ljava/io/File;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$FieldInvalidException;
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/storage/names/PatternSummaryDirectoryParser;->mSchema:Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/storage/names/PatternSummaryDirectoryParser;->mSchema:Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;->isCover(Ljava/util/regex/Matcher;)Z

    move-result v0

    return v0

    .line 86
    :cond_0
    new-instance v0, Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$DidNotMatchException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not parse media file name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$DidNotMatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isExtraFile(Ljava/io/File;)Z
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/storage/names/PatternSummaryDirectoryParser;->mSchema:Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/storage/names/PatternSummaryDirectoryParser;->mSchema:Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;->isExtra(Ljava/util/regex/Matcher;)Z

    move-result v0

    return v0

    .line 76
    :cond_0
    new-instance v0, Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$DidNotMatchException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not parse media file name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$DidNotMatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final listSummaryFiles(Ljava/io/File;)[Ljava/io/File;
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/storage/names/PatternSummaryDirectoryParser;->mFilenameFilter:Ljava/io/FilenameFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 59
    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xc

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    return-object v0
.end method

.method public final timestampOfFile(Ljava/io/File;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$FieldInvalidException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/storage/names/PatternSummaryDirectoryParser;->mSchema:Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;

    invoke-interface {v0}, Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;->getPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/storage/names/PatternSummaryDirectoryParser;->mSchema:Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;

    invoke-interface {v1, v0}, Lcom/google/android/libraries/smartburst/storage/names/StackFileNameSchema;->getTimestamp(Ljava/util/regex/Matcher;)J

    move-result-wide v0

    return-wide v0

    .line 42
    :cond_0
    new-instance v0, Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$DidNotMatchException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not parse media file name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/libraries/smartburst/storage/names/SummaryDirectoryParser$DidNotMatchException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
