.class Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;
.super Ljava/lang/Object;
.source "GraphReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/GraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImportSource"
.end annotation


# instance fields
.field private final mImportPrinter:Ljava/io/PrintWriter;

.field private final mImports:Ljava/io/StringWriter;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 255
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;->mImports:Ljava/io/StringWriter;

    .line 256
    new-instance v0, Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;->mImports:Ljava/io/StringWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;->mImportPrinter:Ljava/io/PrintWriter;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$1;)V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;->mImportPrinter:Ljava/io/PrintWriter;

    const-string v1, "import %s.*;"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    return-void
.end method

.method public writeSourceCode(Ljava/io/PrintWriter;)V
    .locals 1

    .prologue
    .line 264
    const-string v0, "import com.google.android.libraries.smartburst.filterfw.Filter;"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 265
    const-string v0, "import com.google.android.libraries.smartburst.filterfw.FilterGraph;"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 266
    const-string v0, "import com.google.android.libraries.smartburst.filterfw.GraphFactory;"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 267
    const-string v0, "import com.google.android.libraries.smartburst.filterfw.MffContext;"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 269
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;->mImports:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    return-void
.end method
