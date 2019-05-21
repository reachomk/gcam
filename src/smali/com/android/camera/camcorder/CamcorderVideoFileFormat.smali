.class public final enum Lcom/android/camera/camcorder/CamcorderVideoFileFormat;
.super Ljava/lang/Enum;
.source "CamcorderVideoFileFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/camera/camcorder/CamcorderVideoFileFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

.field private static enum MPEG_4:Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

.field private static enum THREE_GPP:Lcom/android/camera/camcorder/CamcorderVideoFileFormat;


# instance fields
.field private filenameExtension:Ljava/lang/String;

.field private mediaRecorderOutputFormat:I

.field private mimeType:Lcom/android/camera/storage/MimeType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 14
    new-instance v0, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    const-string v1, "MPEG_4"

    const-string v4, "mp4"

    sget-object v5, Lcom/android/camera/storage/MimeType;->MPEG4:Lcom/android/camera/storage/MimeType;

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/android/camera/storage/MimeType;)V

    sput-object v0, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->MPEG_4:Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    .line 15
    new-instance v4, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    const-string v5, "THREE_GPP"

    const-string v8, "3gp"

    sget-object v9, Lcom/android/camera/storage/MimeType;->THREE_GPP:Lcom/android/camera/storage/MimeType;

    move v7, v6

    invoke-direct/range {v4 .. v9}, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;-><init>(Ljava/lang/String;IILjava/lang/String;Lcom/android/camera/storage/MimeType;)V

    sput-object v4, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->THREE_GPP:Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    .line 12
    new-array v0, v3, [Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    sget-object v1, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->MPEG_4:Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->THREE_GPP:Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->$VALUES:[Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Lcom/android/camera/storage/MimeType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/android/camera/storage/MimeType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput p3, p0, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->mediaRecorderOutputFormat:I

    .line 54
    iput-object p4, p0, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->filenameExtension:Ljava/lang/String;

    .line 55
    iput-object p5, p0, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->mimeType:Lcom/android/camera/storage/MimeType;

    .line 56
    return-void
.end method

.method public static isFileFormatValid(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 28
    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->fileFormat()I

    move-result v1

    .line 29
    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static of(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;)Lcom/android/camera/camcorder/CamcorderVideoFileFormat;
    .locals 4

    .prologue
    .line 40
    invoke-static {p0}, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->isFileFormatValid(Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(Z)V

    .line 41
    invoke-interface {p0}, Lcom/google/android/apps/camera/proxy/media/CamcorderProfileProxy;->fileFormat()I

    move-result v0

    .line 42
    packed-switch v0, :pswitch_data_0

    .line 48
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "file format is not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :pswitch_0
    sget-object v0, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->THREE_GPP:Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    .line 46
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->MPEG_4:Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    goto :goto_0

    .line 42
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static values()[Lcom/android/camera/camcorder/CamcorderVideoFileFormat;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->$VALUES:[Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    invoke-virtual {v0}, [Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/camera/camcorder/CamcorderVideoFileFormat;

    return-object v0
.end method


# virtual methods
.method public final getFilenameExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->filenameExtension:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaRecorderOutputFormat()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->mediaRecorderOutputFormat:I

    return v0
.end method

.method public final getMimeType()Lcom/android/camera/storage/MimeType;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/camera/camcorder/CamcorderVideoFileFormat;->mimeType:Lcom/android/camera/storage/MimeType;

    return-object v0
.end method
