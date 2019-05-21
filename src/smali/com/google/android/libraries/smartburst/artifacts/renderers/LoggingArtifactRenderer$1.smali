.class final Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer$1;
.super Lcom/google/android/libraries/smartburst/utils/VoidFunction;
.source "LoggingArtifactRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/smartburst/utils/VoidFunction",
        "<",
        "Lcom/google/android/libraries/smartburst/artifacts/Artifact;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer;

.field private synthetic val$segment:Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer;Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer$1;->this$0:Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer;

    iput-object p2, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer$1;->val$segment:Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/utils/VoidFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic process(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 46
    check-cast p1, Lcom/google/android/libraries/smartburst/artifacts/Artifact;

    .line 1051
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 1054
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer$1;->this$0:Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer;->access$000(Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Chain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1055
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/artifacts/Artifact;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xb

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Artifact: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1056
    invoke-virtual {p1}, Lcom/google/android/libraries/smartburst/artifacts/Artifact;->getPriority()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Priority: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1059
    :try_start_0
    invoke-static {p1, v0}, Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer;->access$100(Lcom/google/android/libraries/smartburst/artifacts/Artifact;Ljava/io/Writer;)V

    .line 1060
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer$1;->val$segment:Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;

    invoke-static {v1, v0}, Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer;->access$200(Lcom/google/android/libraries/smartburst/segmentation/FrameSegment;Ljava/io/Writer;)V

    .line 1063
    const-string v1, "CHAIN END. "

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1064
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 1068
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer$1;->this$0:Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer;->access$300(Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer;)Ljava/io/Writer;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1069
    :try_start_1
    iget-object v2, p0, Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer$1;->this$0:Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer;

    invoke-static {v2}, Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer;->access$300(Lcom/google/android/libraries/smartburst/artifacts/renderers/LoggingArtifactRenderer;)Ljava/io/Writer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1070
    monitor-exit v1

    .line 46
    :goto_0
    return-void

    .line 1070
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    const-string v1, "LoggingArtifactRenderer"

    const-string v2, "Cannot log artifact composition."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
