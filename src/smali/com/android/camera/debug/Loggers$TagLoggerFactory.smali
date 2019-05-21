.class final Lcom/android/camera/debug/Loggers$TagLoggerFactory;
.super Ljava/lang/Object;
.source "Loggers.java"

# interfaces
.implements Lcom/android/camera/debug/Logger$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/debug/Loggers$TagLoggerFactory$Singleton;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/camera/debug/Loggers$TagLoggerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;)Lcom/android/camera/debug/Logger;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/android/camera/debug/Logger;

    invoke-direct {v0, p1}, Lcom/android/camera/debug/Logger;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
