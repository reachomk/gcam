.class public Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;
.super Ljava/lang/Object;
.source "MffContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDummySurface:Landroid/view/SurfaceView;

.field private mForceNoGL:Z

.field private mRequireCamera:Z

.field private mRequireOpenGL:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;->mRequireCamera:Z

    .line 97
    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;->mRequireOpenGL:Z

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;->mDummySurface:Landroid/view/SurfaceView;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;->mForceNoGL:Z

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;->mRequireCamera:Z

    return v0
.end method

.method static synthetic access$100(Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;->mRequireOpenGL:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;)Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;->mDummySurface:Landroid/view/SurfaceView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;)Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;->mForceNoGL:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config;-><init>(Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;Lcom/google/android/libraries/smartburst/filterfw/MffContext$1;)V

    return-object v0
.end method

.method public setDummySurface(Landroid/view/SurfaceView;)Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;->mDummySurface:Landroid/view/SurfaceView;

    .line 113
    return-object p0
.end method

.method public setForceNoGL(Z)Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;->mForceNoGL:Z

    .line 118
    return-object p0
.end method

.method public setRequireCamera(Z)Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;
    .locals 0

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;->mRequireCamera:Z

    .line 103
    return-object p0
.end method

.method public setRequireOpenGL(Z)Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;
    .locals 0

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/google/android/libraries/smartburst/filterfw/MffContext$Config$Builder;->mRequireOpenGL:Z

    .line 108
    return-object p0
.end method
