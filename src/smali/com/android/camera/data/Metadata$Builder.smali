.class public final Lcom/android/camera/data/Metadata$Builder;
.super Ljava/lang/Object;
.source "Metadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/data/Metadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private burstSize:I

.field private hasBurstData:Z

.field private hasRgbzData:Z

.field private isAnimation:Z

.field private isCollage:Z

.field private isLoaded:Z

.field private isPanorama:Z

.field private isPanorama360:Z

.field private usePanoramaViewer:Z

.field private videoCaptureFramerate:I

.field private videoHeight:I

.field private videoOrientation:Ljava/lang/String;

.field private videoWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-boolean v1, p0, Lcom/android/camera/data/Metadata$Builder;->isLoaded:Z

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/android/camera/data/Metadata$Builder;->videoOrientation:Ljava/lang/String;

    .line 81
    iput v2, p0, Lcom/android/camera/data/Metadata$Builder;->videoWidth:I

    .line 82
    iput v2, p0, Lcom/android/camera/data/Metadata$Builder;->videoHeight:I

    .line 83
    iput v2, p0, Lcom/android/camera/data/Metadata$Builder;->videoCaptureFramerate:I

    .line 85
    iput-boolean v1, p0, Lcom/android/camera/data/Metadata$Builder;->isPanorama:Z

    .line 86
    iput-boolean v1, p0, Lcom/android/camera/data/Metadata$Builder;->isPanorama360:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/camera/data/Metadata$Builder;->usePanoramaViewer:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/camera/data/Metadata$Builder;->hasRgbzData:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/camera/data/Metadata$Builder;->hasBurstData:Z

    .line 92
    iput v2, p0, Lcom/android/camera/data/Metadata$Builder;->burstSize:I

    .line 93
    iput-boolean v1, p0, Lcom/android/camera/data/Metadata$Builder;->isAnimation:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/camera/data/Metadata$Builder;->isCollage:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/data/Metadata$Builder;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/camera/data/Metadata$Builder;->burstSize:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/data/Metadata$Builder;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/camera/data/Metadata$Builder;->videoCaptureFramerate:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/data/Metadata$Builder;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/camera/data/Metadata$Builder;->isPanorama:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/camera/data/Metadata$Builder;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/camera/data/Metadata$Builder;->isPanorama360:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/camera/data/Metadata$Builder;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/camera/data/Metadata$Builder;->usePanoramaViewer:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/data/Metadata$Builder;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/camera/data/Metadata$Builder;->videoHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/data/Metadata$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/data/Metadata$Builder;->videoOrientation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/data/Metadata$Builder;)I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/android/camera/data/Metadata$Builder;->videoWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/data/Metadata$Builder;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/camera/data/Metadata$Builder;->hasBurstData:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/data/Metadata$Builder;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/camera/data/Metadata$Builder;->hasRgbzData:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/data/Metadata$Builder;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/camera/data/Metadata$Builder;->isAnimation:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/data/Metadata$Builder;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/camera/data/Metadata$Builder;->isCollage:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/camera/data/Metadata$Builder;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/camera/data/Metadata$Builder;->isLoaded:Z

    return v0
.end method


# virtual methods
.method public final build()Lcom/android/camera/data/Metadata;
    .locals 1

    .prologue
    .line 162
    new-instance v0, Lcom/android/camera/data/Metadata;

    invoke-direct {v0, p0}, Lcom/android/camera/data/Metadata;-><init>(Lcom/android/camera/data/Metadata$Builder;)V

    return-object v0
.end method

.method public final setBurstSize(I)Lcom/android/camera/data/Metadata$Builder;
    .locals 0

    .prologue
    .line 157
    iput p1, p0, Lcom/android/camera/data/Metadata$Builder;->burstSize:I

    .line 158
    return-object p0
.end method

.method public final setHasBurstData(Z)Lcom/android/camera/data/Metadata$Builder;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/data/Metadata$Builder;->hasBurstData:Z

    .line 153
    return-object p0
.end method

.method public final setHasRgbzData(Z)Lcom/android/camera/data/Metadata$Builder;
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/data/Metadata$Builder;->hasRgbzData:Z

    .line 138
    return-object p0
.end method

.method public final setIsAnimation(Z)Lcom/android/camera/data/Metadata$Builder;
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/data/Metadata$Builder;->isAnimation:Z

    .line 143
    return-object p0
.end method

.method public final setIsCollage(Z)Lcom/android/camera/data/Metadata$Builder;
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/data/Metadata$Builder;->isCollage:Z

    .line 148
    return-object p0
.end method

.method public final setLoaded(Z)Lcom/android/camera/data/Metadata$Builder;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/data/Metadata$Builder;->isLoaded:Z

    .line 98
    return-object p0
.end method

.method public final setPanorama(Z)Lcom/android/camera/data/Metadata$Builder;
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/data/Metadata$Builder;->isPanorama:Z

    .line 123
    return-object p0
.end method

.method public final setPanorama360(Z)Lcom/android/camera/data/Metadata$Builder;
    .locals 0

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/camera/data/Metadata$Builder;->isPanorama360:Z

    .line 128
    return-object p0
.end method

.method public final setUsePanoramaViewer(Z)Lcom/android/camera/data/Metadata$Builder;
    .locals 0

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/camera/data/Metadata$Builder;->usePanoramaViewer:Z

    .line 133
    return-object p0
.end method

.method public final setVideoCaptureFramerate(I)Lcom/android/camera/data/Metadata$Builder;
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/android/camera/data/Metadata$Builder;->videoCaptureFramerate:I

    .line 118
    return-object p0
.end method

.method public final setVideoHeight(I)Lcom/android/camera/data/Metadata$Builder;
    .locals 0

    .prologue
    .line 112
    iput p1, p0, Lcom/android/camera/data/Metadata$Builder;->videoHeight:I

    .line 113
    return-object p0
.end method

.method public final setVideoOrientation(Ljava/lang/String;)Lcom/android/camera/data/Metadata$Builder;
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/camera/data/Metadata$Builder;->videoOrientation:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public final setVideoWidth(I)Lcom/android/camera/data/Metadata$Builder;
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/android/camera/data/Metadata$Builder;->videoWidth:I

    .line 108
    return-object p0
.end method
