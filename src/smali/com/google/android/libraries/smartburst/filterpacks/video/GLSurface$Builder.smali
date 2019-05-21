.class public Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;
.super Ljava/lang/Object;
.source "GLSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAttachToSurface:Z

.field private mEncoderOnly:Z

.field private mGLSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

.field private mMediaFormat:Landroid/media/MediaFormat;

.field private mSurface:Landroid/view/Surface;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mEncoderOnly:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mAttachToSurface:Z

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrBuild()Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mGLSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mGLSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    .line 111
    :goto_0
    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 100
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mEncoderOnly:Z

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mSurface:Landroid/view/Surface;

    iget-boolean v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mAttachToSurface:Z

    invoke-static {v0, v1}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->access$000(Landroid/view/Surface;Z)Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mGLSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    .line 102
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mGLSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mSurface:Landroid/view/Surface;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->access$100(Landroid/view/Surface;)Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mGLSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    .line 105
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mGLSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    goto :goto_0

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mMediaFormat:Landroid/media/MediaFormat;

    if-eqz v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mMediaFormat:Landroid/media/MediaFormat;

    invoke-static {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->access$200(Landroid/media/MediaFormat;)Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mGLSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    .line 111
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mGLSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    goto :goto_0

    .line 114
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Builder missing inputs. Requires at least surface or format be specified."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mGLSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mGLSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    invoke-virtual {v0}, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;->close()V

    .line 125
    :cond_0
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mGLSurface:Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface;

    .line 126
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mMediaFormat:Landroid/media/MediaFormat;

    .line 127
    iput-object v1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mSurface:Landroid/view/Surface;

    .line 128
    return-void
.end method

.method public setDirectSurface(Z)Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;
    .locals 1

    .prologue
    .line 62
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mAttachToSurface:Z

    .line 63
    return-object p0

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEncoderOnly(Z)Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mEncoderOnly:Z

    .line 85
    return-object p0
.end method

.method public setFormat(Landroid/media/MediaFormat;)Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mMediaFormat:Landroid/media/MediaFormat;

    .line 74
    return-object p0
.end method

.method public setSurface(Landroid/view/Surface;)Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterpacks/video/GLSurface$Builder;->mSurface:Landroid/view/Surface;

    .line 51
    return-object p0
.end method
