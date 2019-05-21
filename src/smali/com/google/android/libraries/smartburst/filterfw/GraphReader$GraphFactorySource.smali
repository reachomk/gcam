.class Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;
.super Ljava/lang/Object;
.source "GraphReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/GraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GraphFactorySource"
.end annotation


# static fields
.field public static final INDENT:Ljava/lang/String; = "    "


# instance fields
.field private final mBaseIndent:I

.field private final mBuildCommands:Ljava/io/StringWriter;

.field private final mBuildPrinter:Ljava/io/PrintWriter;

.field private final mGraphName:Ljava/lang/String;

.field private final mImports:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;

.field private final mParentName:Ljava/lang/String;

.field private final mPostBuildCommands:Ljava/io/StringWriter;

.field private final mPostBuildPrinter:Ljava/io/PrintWriter;

.field private final mSubBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;I)V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBuildCommands:Ljava/io/StringWriter;

    .line 124
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mPostBuildCommands:Ljava/io/StringWriter;

    .line 126
    new-instance v0, Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBuildCommands:Ljava/io/StringWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBuildPrinter:Ljava/io/PrintWriter;

    .line 127
    new-instance v0, Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mPostBuildCommands:Ljava/io/StringWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mPostBuildPrinter:Ljava/io/PrintWriter;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mSubBuilders:Ljava/util/List;

    .line 147
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mGraphName:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mParentName:Ljava/lang/String;

    .line 149
    iput-object p3, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mImports:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;

    .line 150
    iput p4, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBaseIndent:I

    .line 151
    return-void
.end method

.method private writeLine(Ljava/io/PrintWriter;ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 243
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 244
    const-string v1, "    "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 246
    :cond_0
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method private writeParentGraphConstructor(Ljava/io/PrintWriter;)V
    .locals 5

    .prologue
    .line 231
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBaseIndent:I

    add-int/lit8 v0, v0, 0x1

    const-string v1, "private final FilterGraph mParentGraph;"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->writeLine(Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 234
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBaseIndent:I

    add-int/lit8 v0, v0, 0x1

    const-string v1, "public %s(FilterGraph parentGraph) {"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mGraphName:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 235
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->writeLine(Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 236
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBaseIndent:I

    add-int/lit8 v0, v0, 0x2

    const-string v1, "mParentGraph = parentGraph;"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->writeLine(Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 238
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBaseIndent:I

    add-int/lit8 v0, v0, 0x1

    const-string v1, "}"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->writeLine(Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 240
    return-void
.end method


# virtual methods
.method public addBuildCommand(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBuildPrinter:Ljava/io/PrintWriter;

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBaseIndent:I

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->writeLine(Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 210
    return-void
.end method

.method public addPostBuildCommand(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mPostBuildPrinter:Ljava/io/PrintWriter;

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBaseIndent:I

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->writeLine(Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 221
    return-void
.end method

.method public imports()Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mImports:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;

    return-object v0
.end method

.method public newSubBuilder(Ljava/lang/String;)Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;
    .locals 4

    .prologue
    .line 194
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mGraphName:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mImports:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;

    iget v3, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBaseIndent:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;I)V

    .line 196
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mSubBuilders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    return-object v0
.end method

.method public writeSourceCode(Ljava/io/PrintWriter;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 159
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBaseIndent:I

    const-string v1, "public class %s implements GraphFactory {"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mGraphName:Ljava/lang/String;

    aput-object v3, v2, v4

    .line 160
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->writeLine(Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mParentName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 162
    invoke-direct {p0, p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->writeParentGraphConstructor(Ljava/io/PrintWriter;)V

    .line 163
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 165
    :cond_0
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBaseIndent:I

    add-int/lit8 v0, v0, 0x1

    const-string v1, "@Override"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->writeLine(Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 167
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBaseIndent:I

    add-int/lit8 v0, v0, 0x1

    const-string v1, "public FilterGraph create(MffContext context) {"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->writeLine(Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 169
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBaseIndent:I

    add-int/lit8 v0, v0, 0x2

    const-string v1, "FilterGraph.Builder builder = new FilterGraph.Builder(context);"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->writeLine(Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBuildCommands:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBaseIndent:I

    add-int/lit8 v1, v0, 0x2

    const-string v2, "FilterGraph graph = builder.%s;"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mParentName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 174
    const-string v0, "buildSubGraph(mParentGraph)"

    :goto_0
    aput-object v0, v3, v4

    .line 173
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->writeLine(Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mPostBuildCommands:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 176
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBaseIndent:I

    add-int/lit8 v0, v0, 0x2

    const-string v1, "return graph;"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->writeLine(Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 177
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBaseIndent:I

    add-int/lit8 v0, v0, 0x1

    const-string v1, "}"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->writeLine(Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mSubBuilders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;

    .line 179
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 180
    invoke-virtual {v0, p1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->writeSourceCode(Ljava/io/PrintWriter;)V

    goto :goto_1

    .line 174
    :cond_1
    const-string v0, "build()"

    goto :goto_0

    .line 182
    :cond_2
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->mBaseIndent:I

    const-string v1, "}"

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->writeLine(Ljava/io/PrintWriter;ILjava/lang/String;)V

    .line 183
    return-void
.end method
