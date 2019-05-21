.class final Lcom/android/camera/util/SystemProperties$Singleton;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/util/SystemProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/util/SystemProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/android/camera/util/SystemProperties;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/camera/util/SystemProperties;-><init>(B)V

    sput-object v0, Lcom/android/camera/util/SystemProperties$Singleton;->INSTANCE:Lcom/android/camera/util/SystemProperties;

    return-void
.end method

.method static synthetic access$100()Lcom/android/camera/util/SystemProperties;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/camera/util/SystemProperties$Singleton;->INSTANCE:Lcom/android/camera/util/SystemProperties;

    return-object v0
.end method
