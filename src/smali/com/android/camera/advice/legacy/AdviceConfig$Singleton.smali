.class final Lcom/android/camera/advice/legacy/AdviceConfig$Singleton;
.super Ljava/lang/Object;
.source "AdviceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/advice/legacy/AdviceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/advice/legacy/AdviceConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/android/camera/advice/legacy/AdviceConfig;

    invoke-direct {v0}, Lcom/android/camera/advice/legacy/AdviceConfig;-><init>()V

    sput-object v0, Lcom/android/camera/advice/legacy/AdviceConfig$Singleton;->INSTANCE:Lcom/android/camera/advice/legacy/AdviceConfig;

    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/advice/legacy/AdviceConfig;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/camera/advice/legacy/AdviceConfig$Singleton;->INSTANCE:Lcom/android/camera/advice/legacy/AdviceConfig;

    return-object v0
.end method
