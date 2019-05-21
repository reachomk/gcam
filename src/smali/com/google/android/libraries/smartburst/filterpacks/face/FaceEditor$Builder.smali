.class public Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;
.super Ljava/lang/Object;
.source "FaceEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCreateAnimation:Z

.field private mHeight:I

.field private mLandmarkModels:Ljava/nio/ByteBuffer;

.field private mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;->mWidth:I

    .line 61
    iput v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;->mHeight:I

    .line 65
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;->mCreateAnimation:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;->mWidth:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Width must be positive."

    invoke-static {v0, v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 131
    iget v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;->mHeight:I

    if-lez v0, :cond_1

    :goto_1
    const-string v0, "Height must be positive."

    invoke-static {v1, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkState(ZLjava/lang/Object;)V

    .line 132
    new-instance v0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;

    iget v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;->mWidth:I

    iget v2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;->mHeight:I

    iget-object v3, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;->mLandmarkModels:Ljava/nio/ByteBuffer;

    iget-boolean v4, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;->mCreateAnimation:Z

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor;-><init>(IILjava/nio/ByteBuffer;ZLcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$1;)V

    return-object v0

    :cond_0
    move v0, v2

    .line 130
    goto :goto_0

    :cond_1
    move v1, v2

    .line 131
    goto :goto_1
.end method

.method public setAllSmilesAsOutput()Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;->mCreateAnimation:Z

    .line 111
    return-object p0
.end method

.method public setAnimationAsOutput()Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;->mCreateAnimation:Z

    .line 121
    return-object p0
.end method

.method public setFrameDimensions(II)Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    if-lez p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Width must be positive"

    invoke-static {v0, v3}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 98
    if-lez p2, :cond_1

    :goto_1
    const-string v0, "Height must be positive"

    invoke-static {v1, v0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkArgument(ZLjava/lang/Object;)V

    .line 99
    iput p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;->mWidth:I

    .line 100
    iput p2, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;->mHeight:I

    .line 101
    return-object p0

    :cond_0
    move v0, v2

    .line 97
    goto :goto_0

    :cond_1
    move v1, v2

    .line 98
    goto :goto_1
.end method

.method public setNevenAsDetector()Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;->mLandmarkModels:Ljava/nio/ByteBuffer;

    .line 86
    return-object p0
.end method

.method public setPittPattAsDetector(Ljava/nio/ByteBuffer;)Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;
    .locals 0

    .prologue
    .line 74
    invoke-static {p1}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/face/FaceEditor$Builder;->mLandmarkModels:Ljava/nio/ByteBuffer;

    .line 76
    return-object p0
.end method
