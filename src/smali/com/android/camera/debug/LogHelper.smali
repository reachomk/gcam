.class public final Lcom/android/camera/debug/LogHelper;
.super Ljava/lang/Object;
.source "LogHelper.java"


# static fields
.field private static INSTANCE:Lcom/android/camera/debug/LogHelper;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final loggingOverrideLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "LogHelper"

    invoke-static {v0}, Lcom/android/camera/debug/Log;->makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/debug/LogHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/android/camera/debug/LogHelper;->loggingOverrideLevel:I

    .line 37
    return-void
.end method

.method public static initializeOnce(Landroid/content/ContentResolver;)V
    .locals 2

    .prologue
    .line 17
    invoke-static {p0}, Lcom/google/common/base/ExtraObjectsMethodsForWeb;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lcom/android/camera/debug/LogHelper;->INSTANCE:Lcom/android/camera/debug/LogHelper;

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/android/camera/debug/LogHelper;->TAG:Ljava/lang/String;

    const-string v1, "initializeOnce called multiple times"

    invoke-static {v0, v1}, Lcom/android/camera/debug/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :goto_0
    return-void

    .line 23
    :cond_0
    const-string v0, "camera:logging_override_level"

    const/4 v1, 0x0

    .line 24
    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/Gservices;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 26
    new-instance v1, Lcom/android/camera/debug/LogHelper;

    invoke-direct {v1, v0}, Lcom/android/camera/debug/LogHelper;-><init>(I)V

    sput-object v1, Lcom/android/camera/debug/LogHelper;->INSTANCE:Lcom/android/camera/debug/LogHelper;

    goto :goto_0
.end method

.method public static instance()Lcom/android/camera/debug/LogHelper;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/camera/debug/LogHelper;->INSTANCE:Lcom/android/camera/debug/LogHelper;

    return-object v0
.end method


# virtual methods
.method public final getOverrideLevel()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/debug/LogHelper;->loggingOverrideLevel:I

    return v0
.end method
