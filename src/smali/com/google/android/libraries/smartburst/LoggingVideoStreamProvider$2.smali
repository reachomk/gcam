.class final Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider$2;
.super Ljava/lang/Object;
.source "LoggingVideoStreamProvider.java"

# interfaces
.implements Lcom/google/android/libraries/smartburst/training/LogWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->getGrabLogWriter()Lcom/google/android/libraries/smartburst/training/LogWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider$2;->this$0:Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final writeLog(Ljava/io/Writer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const-string v0, "IDEAL"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider$2;->this$0:Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->access$200(Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 75
    const-string v2, ","

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_1
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider$2;->this$0:Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->access$100(Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider$2;->this$0:Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->access$100(Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Long;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    .line 81
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    array-length v1, v0

    if-ge v2, v1, :cond_4

    .line 82
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider$2;->this$0:Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;

    invoke-static {v1}, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->access$200(Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Thread;

    .line 84
    iget-object v4, p0, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider$2;->this$0:Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;

    invoke-static {v4}, Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;->access$200(Lcom/google/android/libraries/smartburst/LoggingVideoStreamProvider;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 85
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v2, :cond_2

    .line 86
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 88
    :cond_2
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 91
    :cond_3
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 81
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 93
    :cond_4
    return-void
.end method
