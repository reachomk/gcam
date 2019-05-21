.class Lcom/android/camera/util/CaptureDataSerializer$Writeable;
.super Ljava/lang/Object;
.source "CaptureDataSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/CaptureDataSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Writeable"
.end annotation


# instance fields
.field final synthetic val$metadata:Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2165
    iput-object p1, p0, Lcom/android/camera/util/CaptureDataSerializer$Writeable;->val$metadata:Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;

    iput-object p2, p0, Lcom/android/camera/util/CaptureDataSerializer$Writeable;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/io/Writer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1168
    iget-object v0, p0, Lcom/android/camera/util/CaptureDataSerializer$Writeable;->val$metadata:Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;

    invoke-interface {v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->getKeys()Ljava/util/List;

    move-result-object v0

    .line 1169
    iget-object v1, p0, Lcom/android/camera/util/CaptureDataSerializer$Writeable;->val$title:Ljava/lang/String;

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1172
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CaptureResult$Key;

    .line 1173
    const-string v2, "    %s\n"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1174
    const-string v2, "        %s\n"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/camera/util/CaptureDataSerializer$Writeable;->val$metadata:Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;

    invoke-interface {v4, v0}, Lcom/google/android/apps/camera/proxy/camera2/CaptureResultProxy;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/util/CaptureDataSerializer;->access$000(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 1176
    :cond_0
    return-void
.end method
