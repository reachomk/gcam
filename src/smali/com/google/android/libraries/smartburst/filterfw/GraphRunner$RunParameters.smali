.class Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$RunParameters;
.super Ljava/lang/Object;
.source "GraphRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/smartburst/filterfw/GraphRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RunParameters"
.end annotation


# instance fields
.field public flushOnClose:Z

.field public isVerbose:Z

.field public listener:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$Listener;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 896
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$RunParameters;->listener:Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$Listener;

    .line 898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$RunParameters;->isVerbose:Z

    .line 899
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$RunParameters;->flushOnClose:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$1;)V
    .locals 0

    .prologue
    .line 896
    invoke-direct {p0}, Lcom/google/android/libraries/smartburst/filterfw/GraphRunner$RunParameters;-><init>()V

    return-void
.end method
