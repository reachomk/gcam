.class final Lcom/android/camera/behavior/Behaviors$NoOpBehavior;
.super Ljava/lang/Object;
.source "Behaviors.java"

# interfaces
.implements Lcom/android/camera/behavior/Behavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/behavior/Behaviors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NoOpBehavior"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/camera/behavior/Behaviors$NoOpBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/android/camera/behavior/Behaviors$NoOpBehavior;

    invoke-direct {v0}, Lcom/android/camera/behavior/Behaviors$NoOpBehavior;-><init>()V

    sput-object v0, Lcom/android/camera/behavior/Behaviors$NoOpBehavior;->INSTANCE:Lcom/android/camera/behavior/Behaviors$NoOpBehavior;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/camera/behavior/Behaviors$NoOpBehavior;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/camera/behavior/Behaviors$NoOpBehavior;->INSTANCE:Lcom/android/camera/behavior/Behaviors$NoOpBehavior;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method
