.class Lcom/google/android/libraries/smartburst/filterfw/GraphReader$JavaSource;
.super Ljava/lang/Object;
.source "GraphReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/GraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JavaSource"
.end annotation


# instance fields
.field private final mBuilder:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;

.field private final mImports:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;

    invoke-direct {v0, v3}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;-><init>(Lcom/google/android/libraries/smartburst/filterfw/GraphReader$1;)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$JavaSource;->mImports:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;

    .line 68
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$JavaSource;->mImports:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v3, v1, v2}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;I)V

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$JavaSource;->mBuilder:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;

    .line 69
    return-void
.end method

.method static synthetic access$200(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$JavaSource;->compileValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static compileValue(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 97
    const-string v0, "null"

    .line 105
    :goto_0
    return-object v0

    .line 98
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 99
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_2
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 104
    :cond_3
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 105
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Cannot serialize value of type \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public mainGraphFactory()Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$JavaSource;->mBuilder:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;

    return-object v0
.end method

.method public writeSourceCode(Ljava/lang/String;Ljava/io/Writer;)V
    .locals 4

    .prologue
    .line 85
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 86
    const-string v1, "// AUTO-GENERATED FILE: DO NOT MODIFY!"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 88
    const-string v1, "package %s;"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 90
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$JavaSource;->mImports:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$ImportSource;->writeSourceCode(Ljava/io/PrintWriter;)V

    .line 91
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 92
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$JavaSource;->mBuilder:Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/smartburst/filterfw/GraphReader$GraphFactorySource;->writeSourceCode(Ljava/io/PrintWriter;)V

    .line 93
    return-void
.end method
