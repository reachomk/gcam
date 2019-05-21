.class final Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink$1;
.super Ljava/io/ByteArrayOutputStream;
.source "XmpAddingArtifactRasterSink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink;

.field private synthetic val$metadata:Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink;Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink$1;->this$0:Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink;

    iput-object p2, p0, Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink$1;->val$metadata:Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 58
    iget-object v0, p0, Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink$1;->this$0:Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink;

    iget-object v1, p0, Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink$1;->val$metadata:Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;

    invoke-static {v0, v1}, Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink;->access$000(Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink;Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v1

    .line 59
    iget-object v0, p0, Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink$1;->this$0:Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink;

    invoke-static {v0}, Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink;->access$100(Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink;)Lcom/google/android/libraries/smartburst/storage/RasterSink;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink$1;->val$metadata:Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;

    invoke-interface {v0, v2}, Lcom/google/android/libraries/smartburst/storage/RasterSink;->streamForArtifact(Lcom/google/android/libraries/smartburst/storage/PreviewableImageMetadata;)Ljava/io/OutputStream;

    move-result-object v2

    .line 61
    iget-object v0, p0, Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink$1;->val$metadata:Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/storage/ArtifactMetadata;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown image type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :sswitch_0
    const-string v4, "image/jpeg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "image/gif"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 63
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink$1;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcom/android/camera/burst/xmp/XmpEmbedder;->streamJpegWithMetadataInserted([BLjava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)V

    .line 67
    :goto_1
    return-void

    .line 66
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/burst/xmp/XmpAddingArtifactRasterSink$1;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcom/android/camera/burst/xmp/XmpEmbedder;->streamGifWithMetadataInserted([BLjava/io/OutputStream;Lcom/adobe/xmp/XMPMeta;)V

    goto :goto_1

    .line 61
    :sswitch_data_0
    .sparse-switch
        -0x58a7d764 -> :sswitch_0
        -0x34688ef0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
